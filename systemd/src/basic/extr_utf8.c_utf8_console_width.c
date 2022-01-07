
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf8_char_console_width (char const*) ;
 char* utf8_next_char (char const*) ;

size_t utf8_console_width(const char *str) {
        size_t n = 0;




        while (*str) {
                int w;

                w = utf8_char_console_width(str);
                if (w < 0)
                        return (size_t) -1;

                n += w;
                str = utf8_next_char(str);
        }

        return n;
}
