
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char32_t ;


 scalar_t__ unichar_iswide (int ) ;
 int utf8_encoded_to_unichar (char const*,int *) ;

__attribute__((used)) static int utf8_char_console_width(const char *str) {
        char32_t c;
        int r;

        r = utf8_encoded_to_unichar(str, &c);
        if (r < 0)
                return r;



        return unichar_iswide(c) ? 2 : 1;
}
