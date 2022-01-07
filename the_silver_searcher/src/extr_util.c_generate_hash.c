
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* as_chars; size_t as_word; } ;
typedef TYPE_1__ word_t ;
typedef int uint8_t ;
typedef int uint16_t ;


 size_t H_SIZE ;
 int memcpy (char**,char const*,int) ;

void generate_hash(const char *find, const size_t f_len, uint8_t *h_table, const int case_sensitive) {
    int i;
    for (i = f_len - sizeof(uint16_t); i >= 0; i--) {

        int caps_set;
        for (caps_set = 0; caps_set < (1 << sizeof(uint16_t)); caps_set++) {
            word_t word;
            memcpy(&word.as_chars, find + i, sizeof(uint16_t));
            int cap_index;

            for (cap_index = 0; caps_set >> cap_index; cap_index++) {
                if ((caps_set >> cap_index) & 1)
                    word.as_chars[cap_index] -= 'a' - 'A';
            }
            size_t h;

            for (h = word.as_word % H_SIZE; h_table[h]; h = (h + 1) % H_SIZE)
                ;
            h_table[h] = i + 1;

            if (case_sensitive)
                break;
        }
    }
}
