class PmPractice
    def initialize

    end

    def generate_num
        res = rand(20)
        res -= 10
        if res == 0
            res += 1
        end
        return res
    end

    def output(x,y,t)
        if x > 0
            print "(+#{x})"
        else
            print "(#{x})"
        end

        if t == 0
            print "+"
        else 
            print "-"
        end

        if y > 0
            print "(+#{y}) = "
        else
            print "(#{y}) = "
        end
    end

    def make_problem
        x = generate_num
        y = generate_num
        ans = 0
        if rand(2) == 0
            output(x,y,0)
            ans = x+y
        else
            output(x,y,1)
            ans = x-y
        end

        if ans == gets.chomp.to_i
            puts "Correct"
        else 
            puts "Wrong"
        end
        puts "\n"
    end

    def run
        print "問題数を入力してください(入力後タイマーがスタートします): "
        prob_count = gets.chomp.to_i
        start_time = Time.now
        while prob_count > 0
            make_problem
            prob_count = prob_count-1
        end
        puts "かかった時間は #{(Time.now-start_time).round(3)}秒です"
    end
end

pm_practice = PmPractice.new
pm_practice.run