
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double pow (double,double) ;

__attribute__((used)) static
double Rec709(double L)
{
    if (L <0.018) return 4.5*L;
    else
    {
          double a = 1.099* pow(L, 0.45);

          a = a - 0.099;
          return a;
    }
}
