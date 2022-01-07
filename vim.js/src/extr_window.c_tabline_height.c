
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tp_next; } ;


 TYPE_1__* first_tabpage ;
 scalar_t__ gui_use_tabline () ;
 int p_stal ;

int
tabline_height()
{





    switch (p_stal)
    {
 case 0: return 0;
 case 1: return (first_tabpage->tp_next == ((void*)0)) ? 0 : 1;
    }
    return 1;
}
