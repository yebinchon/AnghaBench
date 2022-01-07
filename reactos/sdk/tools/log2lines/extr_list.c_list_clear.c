
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * ptail; TYPE_1__* phead; } ;
struct TYPE_5__ {struct TYPE_5__* pnext; } ;
typedef TYPE_1__* PLIST_MEMBER ;
typedef TYPE_2__* PLIST ;


 int entry_delete (TYPE_1__*) ;

void list_clear(PLIST list)
{
    PLIST_MEMBER pentry = list->phead;
    PLIST_MEMBER pnext;
    while (pentry)
    {
        pnext = pentry->pnext;
        entry_delete(pentry);
        pentry = pnext;
    }
    list->phead = list->ptail = ((void*)0);
}
