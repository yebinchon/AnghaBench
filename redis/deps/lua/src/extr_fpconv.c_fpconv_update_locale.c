
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int abort () ;
 int fprintf (int ,char*) ;
 char locale_decimal_point ;
 int snprintf (char*,int,char*,double) ;
 int stderr ;

__attribute__((used)) static void fpconv_update_locale()
{
    char buf[8];

    snprintf(buf, sizeof(buf), "%g", 0.5);



    if (buf[0] != '0' || buf[2] != '5' || buf[3] != 0) {
        fprintf(stderr, "Error: wide characters found or printf() bug.");
        abort();
    }

    locale_decimal_point = buf[1];
}
