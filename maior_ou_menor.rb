#!/usr/bin/ruby
def da_boa_vindas
	puts "Bem vindo ao jogo da adivinhação"
	puts "\n\n"
	puts "Qual seu nome? "
	nome = gets
	puts"Começaremos o jogo para você, " + nome
end

da_boa_vindas()
puts"Escolhendo um némero secreto em 0 e 200..."
numero_secreto = 175
puts"Escolhido... que tal adivinhar hoje nosso número secreto? "

limite_tentativa = 3
for x in 1..limite_tentativa
	puts"\n\n"
	puts "Tenttiva " + x.to_s + " de " + limite_tentativa.to_s
	puts"Entre com um número"
	chute = gets
	if not chute.nil?
		puts "Você deve informr um valor: "
		break
	else	
		puts
		puts"Será que acertou? você chutou : #{chute}"


		acertou = chute.to_i == numero_secreto

		if acertou
			puts"Parabéns você certou nosso numero secreto!"
		else
			maior = chute.to_i < numero_secreto
			if maior	
				puts"O número secreto é maior"
			else
			    puts"O número secreto é menor"	
				
			end
		    puts"Você não acertou nosso número secreto"	

		end
	end	   
end