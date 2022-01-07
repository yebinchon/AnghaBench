
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int win_T ;
struct TYPE_5__ {TYPE_3__* tab; } ;
typedef TYPE_1__ TabPageObject ;
struct TYPE_6__ {int * tp_firstwin; } ;


 scalar_t__ CheckTabPage (TYPE_1__*) ;
 TYPE_3__* curtab ;
 int * firstwin ;

__attribute__((used)) static win_T *
get_firstwin(TabPageObject *tabObject)
{
    if (tabObject)
    {
 if (CheckTabPage(tabObject))
     return ((void*)0);


 else if (tabObject->tab == curtab)
     return firstwin;
 else
     return tabObject->tab->tp_firstwin;
    }
    else
 return firstwin;
}
