
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double x; double n; } ;
typedef TYPE_1__* LPSTAT ;



__attribute__((used)) static
double Mean(LPSTAT st)
{
    return st ->x/st ->n;
}
