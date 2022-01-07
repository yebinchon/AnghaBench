
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int x2; int x; } ;
typedef TYPE_1__* LPSTAT ;


 double sqrt (int) ;

__attribute__((used)) static
double Std(LPSTAT st)
{
    return sqrt((st->n * st->x2 - st->x * st->x) / (st->n*(st->n-1)));
}
