class Slot
  def slot
    $coin = 100
    $point = 0

    puts "----------------"
    puts "残りコイン数 #{$coin}"
    puts "ポイント #{$point}"
    puts "何コイン入れますか？"
    puts "1(10コイン) 2(30コイン) 3(50コイン) 0(終了)"
    puts "----------------"

    def random
      puts "----------------"

      nums = Array.new(10){rand 10}

      puts "|#{nums[0]}|| || |"
      puts "|#{nums[1]}|| || |"
      puts "|#{nums[2]}|| || |"
      puts "----------------"
      puts "|#{nums[0]}||#{nums[3]}|| |"
      puts "|#{nums[1]}||#{nums[4]}|| |"
      puts "|#{nums[2]}||#{nums[5]}|| |"
      puts "----------------"
      puts "|#{nums[0]}||#{nums[3]}||#{nums[6]}|"
      puts "|#{nums[1]}||#{nums[4]}||#{nums[7]}|"
      puts "|#{nums[2]}||#{nums[5]}||#{nums[8]}|"

      if ((nums[0] == nums[3]) && (nums[3] == nums[6])) || ((nums[1] == nums[4]) && (nums[4] == nums[7])) || ((nums[2] == nums[5]) && (nums[5] == nums[8]))
        puts "横列が揃いました"
        puts "50コインとポイントが増えます"
        $coin += 50
        $point += 50
        puts "コイン数 #{$coin}"
        puts "ポイント #{$point}"
        puts "----------------"
      else
        puts "横列は揃いませんでした"
        puts "----------------"
      end

      if ((nums[0] == nums[4]) && (nums[4] == nums[8])) || ((nums[2] == nums[4]) && (nums[4] == nums[6]))
        puts "斜め列が揃いました"
        puts "30コインとポイントが増えます"
        $coin += 30
        $point += 30
        puts "コイン数 #{$coin}"
        puts "ポイント #{$point}"
        puts "----------------"
      else
        puts "斜め列は揃いませんでした"
        puts "----------------"
      end

      if ((nums[0] == nums[1]) && (nums[1] == nums[2])) || ((nums[3] == nums[4]) && (nums[4] == nums[5])) || ((nums[6] == nums[7]) && (nums[7] == nums[8]))
        puts "縦列が揃いました"
        puts "コインとポイントは増えません"
        puts "----------------"
      else
        puts "縦列は揃いませんでした"
        puts "----------------"
      end
    end

    bet = gets.chomp.to_i

    if bet == 1
      $coin -=10
    elsif bet == 2
      $coin -= 30
    elsif bet == 3
      $coin -= 50
    elsif bet == 0
      puts "----------------"
      puts "終了します"
    else
      puts "----------------"
      puts "入力された値が無効です"
    end

    puts "----------------"

    if (bet == 1) || (bet == 2) || (bet == 3)
      puts "#{bet}の#{100-$coin}コインが選択されました"
      puts "残りコイン数#{$coin}"

      random
    else
      puts "終了しました"
    end
  end
end

game = Slot.new()
game.slot
