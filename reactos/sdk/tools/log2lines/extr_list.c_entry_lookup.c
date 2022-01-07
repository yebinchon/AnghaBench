
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* phead; } ;
struct TYPE_5__ {struct TYPE_5__* pnext; int name; } ;
typedef TYPE_1__* PLIST_MEMBER ;
typedef TYPE_2__* PLIST ;


 scalar_t__ PATHCMP (char*,int ) ;

PLIST_MEMBER
entry_lookup(PLIST list, char *name)
{
    PLIST_MEMBER pprev = ((void*)0);
    PLIST_MEMBER pnext;

    if (!name || !name[0])
        return ((void*)0);

    pnext = list->phead;
    while (pnext != ((void*)0))
    {
        if (PATHCMP(name, pnext->name) == 0)
        {
            if (pprev)
            {
                pprev->pnext = pnext->pnext;
                pnext->pnext = list->phead;
                list->phead = pnext;
            }
            return pnext;
        }
        pprev = pnext;
        pnext = pnext->pnext;
    }
    return ((void*)0);
}
