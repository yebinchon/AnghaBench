
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ptail; TYPE_1__* phead; } ;
struct TYPE_6__ {struct TYPE_6__* pnext; } ;
typedef TYPE_1__* PLIST_MEMBER ;
typedef TYPE_2__* PLIST ;



PLIST_MEMBER
entry_insert(PLIST list, PLIST_MEMBER pentry)
{
    if (!pentry)
        return ((void*)0);

    pentry->pnext = list->phead;
    list->phead = pentry;
    if (!list->ptail)
        list->ptail = pentry;
    return pentry;
}
