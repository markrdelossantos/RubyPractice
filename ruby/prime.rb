class Prime
    def get_primes_to(arg)
        primes = [2];
        (1..arg).each do |n|
            failed = false;
            (2..7).each do |m|
                # unless n > 1 && n != m && n.modulo(m) == 0
                #     failed = true;
                #     break;
                # end

                unless n >= 1
                    puts "aw, #{n} is less than or equal to 1, passing..";
                    failed = true;
                    break;
                end
                unless n != m
                    puts "aw, #n is equal to #{m}, passing.."
                end

            end
            primes.push n unless failed
        end
        puts primes
    end
end