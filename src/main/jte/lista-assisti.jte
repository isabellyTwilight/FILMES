<!DOCTYPE html>
<html>
<html long="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Minha Lista</title>
<body>

<header>
    <h1>Minha Watchlist</h1>

    <nav>
        <a href="/filmes">Minha Lista</a>
        <a href="/assistidos">Já Assisti</a>
    </nav>
</header>

<main>
    <h2>Para assistir</h2>

    <table>
        <thead>
        <tr>
            <th>Nome</th>
            <th>Tipo</th>
            <th>Gênero</th>
            <th>Plataforma</th>
            <th>Data prevista</th>
            <th>Ação</th>
        </tr>
        </thead>

        <tbody>
            <td> ${f.getNome}"></td>
            <td> ${f.getTipo}"></td>
            <td> ${f.getGenero}"></td>
            <td> ${f.getPlataforma}"></td>
            <td>${f.dataPrevista()}"></td>

            <td>
                <form th:action="@{/assistir/{id}(id=${f.id})}"
                      method="post">
                    <button type="submit">
                        ✓ Assisti!
                    </button>
                </form>
            </td>
        </tr>
        </tbody>
    </table>

    <p th:if="${#lists.isEmpty(movies)}">
        Nenhum título ainda. Que tal adicionar um?
    </p>
</main>

</body>

</head>
</html>