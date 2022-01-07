
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Min; scalar_t__ Peak; scalar_t__ x2; scalar_t__ x; scalar_t__ n; } ;
typedef TYPE_1__* LPSTAT ;



__attribute__((used)) static
void ClearStatistics(LPSTAT st)
{

    st ->n = st ->x = st->x2 = st->Peak = 0;
    st ->Min = 1E10;

}
