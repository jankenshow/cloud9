class Pokemon
    
    attr_accessor :poke_name, :poke_hp, :poke_attack
    
    def initialize(name="poke", hp, attack)
        @poke_name = name
        @poke_hp = hp
        @poke_attack = attack
    end
    
    def self.poke_battle(poke1, poke2)
        
        puts "\npikachu vs zenigame"
        
        if poke1.poke_attack > poke2.poke_attack
            while poke2.poke_hp > 0 do
                poke2.poke_hp -= poke1.poke_attack
                puts "\npikachu attacked on zenigame"
                puts "HP of #{poke2.poke_name} is #{poke2.poke_hp}"
                sleep(1)
            end
            sleep(2)
            puts "\npikachu won!"
            
        elsif poke2.poke_attack > poke1.poke_attack
            while poke1.poke_hp > 0 do
                poke1.poke_hp -= poke2.poke_attack
                puts "\nzenigame attacked on pikachu"
                puts "HP of #{poke1.poke_name} is #{poke1.poke_hp}"
                sleep(1)
            end
            sleep(2)
            puts "\nzenigame won!"
        
        else
            puts "\ndraw!"
        
        end
        
    end

end

puts "ピカチュウの体力を入力してください"
pika_hp = gets.to_i
puts "ピカチュウの攻撃力を入力してください"
pika_attack = gets.to_i
pikachu = Pokemon.new(pikachu, pika_hp, pika_attack)

puts "ゼニガメの体力を入力してください"
kame_hp = gets.to_i
puts "ゼニガメの攻撃力を入力してください"
kame_attack = gets.to_i
zenigame = Pokemon.new(zenigame, kame_hp, kame_attack)

Pokemon.poke_battle(pikachu, zenigame)
