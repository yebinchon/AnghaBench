
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double x; double x2; double n; double Peak; double Min; } ;
typedef TYPE_1__* LPSTAT ;



__attribute__((used)) static
void AddOnePixel(LPSTAT st, double dE)
{

    st-> x += dE; st ->x2 += (dE * dE); st->n += 1.0;
    if (dE > st ->Peak) st ->Peak = dE;
    if (dE < st ->Min) st ->Min= dE;
}
