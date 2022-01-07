
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int nextCookie; TYPE_3__ IGlobalInterfaceTable_iface; int list; } ;
typedef TYPE_1__ StdGlobalInterfaceTableImpl ;
typedef int IGlobalInterfaceTable ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,TYPE_3__*,int *) ;
 int StdGlobalInterfaceTableImpl_Vtbl ;
 int TRACE (char*,TYPE_1__*) ;
 int list_init (int *) ;
 int * std_git ;

IGlobalInterfaceTable* get_std_git(void)
{
  if (!std_git)
  {
    StdGlobalInterfaceTableImpl* newGIT;

    newGIT = HeapAlloc(GetProcessHeap(), 0, sizeof(StdGlobalInterfaceTableImpl));
    if (!newGIT) return ((void*)0);

    newGIT->IGlobalInterfaceTable_iface.lpVtbl = &StdGlobalInterfaceTableImpl_Vtbl;
    list_init(&newGIT->list);
    newGIT->nextCookie = 0xf100;

    if (InterlockedCompareExchangePointer((void**)&std_git, &newGIT->IGlobalInterfaceTable_iface, ((void*)0)))
    {
      HeapFree(GetProcessHeap(), 0, newGIT);
    }
    else
      TRACE("Created the GIT at %p\n", newGIT);
  }

  return std_git;
}
