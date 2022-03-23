class AnalisadorLinha

    attr_accessor :numero_da_linha
    
    def initialize(numero_da_linha, conteudo)
        @numero_da_linha = numero_da_linha
        @conteudo = conteudo
        @palavras_frequentes = {}
        @mais_frequentes = []
    end

    def analise_frequencia()
        lista_palavras = @conteudo.split(" ")
        
        for palavra in lista_palavras
            
            if !@palavras_frequentes.include? palavra
                
                @palavras_frequentes["#{palavra}"] = 1
            else
                
                quantidade = @palavras_frequentes["#{palavra}"]
                @palavras_frequentes["#{palavra}"] = quantidade + 1
            end
        end

        maior_frequencia = @palavras_frequentes.values.max

        @palavras_frequentes.each {|freq_chave, freq_valor| 
            if freq_valor == maior_frequencia
                hash = Hash.new
                hash["#{freq_chave}:"] = freq_valor
                @mais_frequentes.push(hash)
            end
        }

        for i in @mais_frequentes
            i.each {|chave, valor| puts "A palavra #{chave} aparece #{valor} vez(es)"}
        end
    
        
    end
end
