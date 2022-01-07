
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf8_encoded_valid_unichar (char const*,size_t) ;

size_t utf8_n_codepoints(const char *str) {
        size_t n = 0;



        while (*str != 0) {
                int k;

                k = utf8_encoded_valid_unichar(str, (size_t) -1);
                if (k < 0)
                        return (size_t) -1;

                str += k;
                n++;
        }

        return n;
}
