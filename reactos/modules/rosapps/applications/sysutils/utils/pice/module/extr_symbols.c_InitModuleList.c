
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int * BaseAddress; scalar_t__ size; struct TYPE_4__* next; } ;
typedef TYPE_1__* PDEBUG_MODULE ;
typedef int DEBUG_MODULE ;
typedef int BOOLEAN ;


 int ASSERT (int ) ;
 int ENTER_FUNC () ;
 scalar_t__ ExAllocatePool (int ,int) ;
 int FALSE ;
 int FreeModuleList (TYPE_1__*) ;
 int LEAVE_FUNC () ;
 int NonPagedPool ;
 int TRUE ;

BOOLEAN InitModuleList( PDEBUG_MODULE *ppmodule, ULONG len )
{
 ULONG i;
 PDEBUG_MODULE pNext = ((void*)0), pm = *ppmodule;

 ENTER_FUNC();

 ASSERT(pm==((void*)0));

 for(i=1;i<=len;i++){
  pm = (PDEBUG_MODULE)ExAllocatePool( NonPagedPool, sizeof( DEBUG_MODULE ) );
  if( !pm ){
   FreeModuleList(pNext);
   return FALSE;
  }
  pm->next = pNext;
  pm->size = 0;
  pm->BaseAddress = ((void*)0);

  pNext = pm;
 }
 *ppmodule = pm;

 LEAVE_FUNC();

 return TRUE;
}
