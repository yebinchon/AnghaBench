
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double INFINITY ;
 double NAN ;
 int ok_str (char*,char*) ;
 int sprintf (char*,char*,double) ;

void
test_e()
{
    char buffer[128];
    long double fpval;

    fpval = 1. / 3.;
    sprintf(buffer, "%e", fpval);
    ok_str(buffer, "-3.720662e-103");

    fpval = 1. / 3.;
    sprintf(buffer, "%e", (double)fpval);
    ok_str(buffer, "3.333333e-001");

    sprintf(buffer, "%e", 33.54223);
    ok_str(buffer, "3.354223e+001");

    sprintf(buffer, "%e", NAN);
    ok_str(buffer, "1.#QNAN0e+000");

    sprintf(buffer, "%.9e", NAN);
    ok_str(buffer, "1.#QNAN0000e+000");

    sprintf(buffer, "%e", INFINITY );
    ok_str(buffer, "1.#INF00e+000");

    sprintf(buffer, "%e", -INFINITY );
    ok_str(buffer, "-1.#INF00e+000");


}
