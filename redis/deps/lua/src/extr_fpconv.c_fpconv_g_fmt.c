
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPCONV_G_FMT_BUFSIZE ;
 char locale_decimal_point ;
 int set_number_format (char*,int) ;
 int snprintf (char*,int,char*,double) ;

int fpconv_g_fmt(char *str, double num, int precision)
{
    char buf[FPCONV_G_FMT_BUFSIZE];
    char fmt[6];
    int len;
    char *b;

    set_number_format(fmt, precision);


    if (locale_decimal_point == '.')
        return snprintf(str, FPCONV_G_FMT_BUFSIZE, fmt, num);


    len = snprintf(buf, FPCONV_G_FMT_BUFSIZE, fmt, num);


    b = buf;
    do {
        *str++ = (*b == locale_decimal_point ? '.' : *b);
    } while(*b++);

    return len;
}
