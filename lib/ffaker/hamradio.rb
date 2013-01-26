module Faker
  module Hamradio
    extend ModuleUtils
    extend self

    def us_callsign
      "#{PREFIXES.rand}#{REGIONS.rand}#{suffix}"
    end
    
    def suffix
      call_suffix = ""
      (rand(3)+2).times do
        call_suffix << ALPHABET.rand
      end
      call_suffix
    end

    PREFIXES = k %w(A AA WA WB WC WD W K KA KB KC KD KE N)
    REGIONS = k %w(0 1 2 3 4 5 6)
    ALPHABET = k %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  end
end
