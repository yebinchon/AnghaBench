
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* utf8_escape_non_printable_full (char const*,size_t) ;
 char* xescape_full (char const*,char*,size_t,int) ;

char *escape_non_printable_full(const char *str, size_t console_width, bool eight_bit) {
        if (eight_bit)
                return xescape_full(str, "", console_width, 1);
        else
                return utf8_escape_non_printable_full(str, console_width);
}
