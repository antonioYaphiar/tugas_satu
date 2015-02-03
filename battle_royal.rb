class Player
    attr_accessor :nama, :blood, :manna

    # initialize is constructor for class

    def initialize nama
        @nama = nama
	@blood = 100
	@manna = 40
	@status =""
    end

    def damaged
	@blood = @blood-20
    end

    def attack
	@manna = @manna-20
    end

end

players = Array.new
berita =""



while true

puts "#==============================#
#               Welcome to Battle Arena       #
#-----------------------------------------------------#
# Description :                                          #
# 1. ketik “new” untuk membuat karakter #
# 2. ketik “start” untuk memulai pertarungan #
#-----------------------------------------------------#
# Current Player :                                     #"



for i in 0...players.length
puts players[i].nama
end
puts "
#                      -                                          #
# * max player 2 atau 3                          #
#{berita}
#-----------------------------------------------------#"

berita=""




aksi = gets.chomp

if aksi == "new" 
	if players.length >2
		berita = "terlalu banyak pemain"
	else
		puts "#==============================#
#            Welcome to Battle Arena         #
#-----------------------------------------------------#
# Description :                                          #
# 1. ketik “new” untuk membuat karakter #
# 2. ketik “start” untuk memulai pertarungan #
#-----------------------------------------------------#
# Masukan Nama Player : <nama_player> #
#                      -                                           #
# * max player 2 atau 3                           #
#-----------------------------------------------------#"
		nama = gets.chomp
		pl = Player.new(nama)
		players << pl
	end


elsif aksi == "start"
	if players.length ==2 or players.length ==3
		break
	else berita ="JUMLAH PLAYER KURANG"
	end

else berita= "invalid command"
end

end




hasil = ""
while true

puts "#==============================#
#                 Welcome to Battle Arena    #
#-----------------------------------------------------#
Battle Start :
siapa yang akan menyerang : <nama_player_1>
siapa yang di serang: <nama_player_2>
#{hasil}
"


pl1 = gets.chomp
pl2 = gets.chomp
puts "#{pl1} menyerang #{pl2}"
i1=-1
i2=-1
	for i in 0...players.length
		if pl1==players[i].nama
			i1 = i
			 
				
		elsif pl2==players[i].nama
			i2 = i
			
				
		end
	end

	if i1==-1 or i2 == -1 
	hasil = "salah satu player tidak ada"
	else
	players[i1].attack
	players[i2].damaged 
	hasil = "Description :
#{pl1} : manna = #{players[i1].manna}, blood = #{players[i1].blood}
#{pl2} : manna = #{players[i2].manna}, blood = #{players[i2].blood}"
		if players[i1].manna == 0
			break
		end
	end


end


puts " 
#==============================#
#                 Welcome to Battle Arena    #
#-----------------------------------------------------#

GAME OVER
"
