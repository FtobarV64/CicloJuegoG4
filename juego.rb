# Se pide crear el programa juego.rb, donde el usuario pasará como argumento piedra, papel
# o tijera, y el programa escogerá una opción al azar.
# (Crear el diagrama de flujo antes del programa)
# Para que el computador pueda jugar escoger un número al azar entre 0 y 2, si es 0
# entonces es piedra, si es 1 entonces papel y 2 tijera.
# Para esto investigue en la documentación el método rand de la clase Random.
# Uso:
# ruby juego.rb piedra
# Computador juega tijera.
# Ganaste.
# ruby juego.rb tijera
# Computador juega tijera.
# Empataste.
# ruby juego.rb tijera
# Computador juega piedra
# Perdiste
# En caso que el argumento sea distinto a piedra, papel o tijera el programa debe mostrar las
# opciones que se pueden jugar.

# Se debe ingresar la opción del jugador mediante ARGV
opt = ARGV[0].downcase

# En caso que el argumento sea distinto a piedra, papel o tijera el programa debe mostrar las
# opciones que se pueden jugar.

if opt == 'piedra' or opt == 'papel' or opt == 'tijera'
    # Para que el computador pueda jugar escoger un número al azar entre 0 y 2, si es 0
    # entonces es piedra, si es 1 entonces papel y 2 tijera.
    pc_opt = Random.new
    pc_opt = pc_opt.rand(0..2)

    if pc_opt ==0
        pc_opt ='piedra'
    elsif pc_opt==1
        pc_opt ='papel'
    else
        pc_opt ='tijera'
    end

   if opt == pc_opt
       puts "Computador juega #{pc_opt}.\nEmpataste."
   elsif (opt == 'piedra' and pc_opt == 'tijera') or (opt == 'papel' and pc_opt == 'piedra') or (opt == 'tijera' and pc_opt == 'papel')
    puts "Computador juega #{pc_opt}.\nGanaste."
   else
    puts "Computador juega #{pc_opt}.\nPerdiste."
   end
else
    puts "Las opciones disponibles solo son: piedra, papel o tijera"    
end


