class PmPractice

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
        type = rand(2)
        if type == 0
            ans = x+y
        else
            ans = x-y
        end

        ok = false
        while ok == false do
            output(x,y,type)
            if ans == gets.chomp.to_i
                puts "Correct"
                ok = true
            else 
                puts "Wrong"
            end
            puts "\n"
        end
    end

    def run
        print "問題数を入力してください(入力後時間計測を開始します): "
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