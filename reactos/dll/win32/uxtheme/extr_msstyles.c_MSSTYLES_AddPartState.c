
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* partstate; } ;
struct TYPE_8__ {int iPartId; int iStateId; struct TYPE_8__* next; int * properties; } ;
typedef int THEME_PARTSTATE ;
typedef TYPE_1__* PTHEME_PARTSTATE ;
typedef TYPE_2__* PTHEME_CLASS ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 TYPE_1__* MSSTYLES_FindPartState (TYPE_2__*,int,int,int *) ;

__attribute__((used)) static PTHEME_PARTSTATE MSSTYLES_AddPartState(PTHEME_CLASS tc, int iPartId, int iStateId)
{
    PTHEME_PARTSTATE cur = MSSTYLES_FindPartState(tc, iPartId, iStateId, ((void*)0));
    if(cur) return cur;

    cur = HeapAlloc(GetProcessHeap(), 0, sizeof(THEME_PARTSTATE));
    cur->iPartId = iPartId;
    cur->iStateId = iStateId;
    cur->properties = ((void*)0);
    cur->next = tc->partstate;
    tc->partstate = cur;
    return cur;
}
