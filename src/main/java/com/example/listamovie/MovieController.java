package com.example.listamovie;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;
@Controller
public class MovieController {

    List<Filme> movies = new ArrayList<>();

    @GetMapping("/filmes")
    public String listar(Model model) {

        model.addAttribute("filmes", movies);
        return "lista";
    }

    @GetMapping("/assistidos")
    public String assistidos(Model model) {
        List<Filme> concluidos = new ArrayList<>();

        for (Filme f : movies) {
            if (f.assistido()) {
                concluidos.add(f);
            }
        }

        model.addAttribute("filmes", concluidos);
        return "assistidos";
    }

//    @PostMapping("/assistir/{id}")
//    public String marcarAssistido(@PathVariable Long id) {
//        for (Filme f : movies) {
//            if (f.id().equals(id)) {
//                f.assistido(true);
//                break;
//            }
//        }
//
//        return "redirect:/filmes";
//    }
}

