
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tp_topframe; struct TYPE_3__* tp_next; } ;
typedef TYPE_1__ tabpage_T ;


 int MIN_LINES ;
 TYPE_1__* first_tabpage ;
 int * firstwin ;
 int frame_minheight (int ,int *) ;
 scalar_t__ tabline_height () ;

int
min_rows()
{
    int total;





    if (firstwin == ((void*)0))
 return MIN_LINES;
    total = 1;

    total += 1;
    return total;
}
