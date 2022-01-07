
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* tp_next; } ;
typedef TYPE_1__ tabpage_T ;


 TYPE_1__* curtab ;
 TYPE_1__* first_tabpage ;

__attribute__((used)) static tabpage_T *
alt_tabpage()
{
    tabpage_T *tp;


    if (curtab->tp_next != ((void*)0))
 return curtab->tp_next;


    for (tp = first_tabpage; tp->tp_next != curtab; tp = tp->tp_next)
 ;
    return tp;
}
