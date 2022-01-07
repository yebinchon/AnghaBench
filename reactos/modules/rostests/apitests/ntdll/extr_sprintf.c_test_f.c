
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ok_str (char*,char*) ;
 int sprintf (char*,char*,int) ;

void
test_f()
{
    char buffer[128];
    long double fpval;

    fpval = 1. / 3.;
    sprintf(buffer, "%f", fpval);
    ok_str(buffer, "-0.000000");

    sprintf(buffer, "%lf", fpval);
    ok_str(buffer, "-0.000000");

    sprintf(buffer, "%llf", fpval);
    ok_str(buffer, "-0.000000");

    sprintf(buffer, "%Lf", fpval);
    ok_str(buffer, "-0.000000");

    sprintf(buffer, "%f", (double)fpval);
    ok_str(buffer, "0.333333");

    sprintf(buffer, "%f", (double)0.125);
    ok_str(buffer, "0.125000");

    sprintf(buffer, "%3.7f", (double)fpval);
    ok_str(buffer, "0.3333333");

    sprintf(buffer, "%3.30f", (double)fpval);
    ok_str(buffer, "0.333333333333333310000000000000");

    sprintf(buffer, "%3.60f", (double)fpval);
    ok_str(buffer, "0.333333333333333310000000000000000000000000000000000000000000");

    sprintf(buffer, "%3.80f", (double)fpval);
    ok_str(buffer, "0.33333333333333331000000000000000000000000000000000000000000000000000000000000000");

    fpval = 1. / 0.;
    sprintf(buffer, "%f", fpval);
    ok_str(buffer, "0.000000");

    sprintf(buffer, "%f", 0x7ff8000000000000ULL);
    ok_str(buffer, "1.#QNAN0");

    sprintf(buffer, "%.9f", 0x7ff8000000000000ULL);
    ok_str(buffer, "1.#QNAN0000");

    sprintf(buffer, "%f", 0x7ff0000000000000ULL );
    ok_str(buffer, "1.#INF00");

    sprintf(buffer, "%f", 0xfff0000000000000ULL );
    ok_str(buffer, "-1.#INF00");

    sprintf(buffer, "%f", 0xfff8000000000000ULL);
    ok_str(buffer, "-1.#IND00");

}
