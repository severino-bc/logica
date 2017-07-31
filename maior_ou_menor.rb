def da_boa_vindas
	puts "Bem vindo ao jogo da adivinhação"
	puts "\n\n"
	puts "Qual seu nome? "
	nome = gets
	puts"Começaremos o jogo para você, " + nome
end

def sortea_numero_secreto
	puts "Tentativa " + tentativa.to_s + " de " + limite_tentativa.to_s
	puts"Entre com um número"
	chute = gets
	puts
	puts"Será que acertou? você chutou : #{chute}"
	sleep(2)
end

numero_secreto = 175
da_boa_vindas()


puts"Escolhendo um némero secreto em 0 e 200..."
puts"Escolhido... que tal adivinhar hoje nosso número secreto? "
puts "\n\n"
	
limite_tentativa = 5

for tentativa in 1..limite_tentativa

	acertou = chute.to_i == numero_secreto
	maior = chute.to_i < numero_secreto

	if acertou
		puts"Parabéns você certou nosso numero secreto!"
	else
		if maior	
			puts"O número secreto é maior"
		else
		    puts"O número secreto é menor"	
			
		end
	    puts"Você não acertou nosso número secreto"	

	end
end	    