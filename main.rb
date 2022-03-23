require_relative "AnalisadorLinha"

file = File.open("texto.txt")

file_data = file.readlines

instancias = []

cont = 0

# Percorrendo as linhas do texto
for linha in file_data
    cont += 1
    analisador = AnalisadorLinha.new(cont, linha)
    instancias.push(analisador)
end


# Lançando as instancias armazenadas
for instancia in instancias
    puts "Linha #{instancia.numero_da_linha}"
    instancia.analise_frequencia
end
