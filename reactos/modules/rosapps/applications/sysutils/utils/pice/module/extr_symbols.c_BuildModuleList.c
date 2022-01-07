
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {scalar_t__ Peb; } ;
typedef scalar_t__ PPEB ;
typedef TYPE_1__* PEPROCESS ;
typedef int BOOLEAN ;


 int ASSERT (int ) ;
 int ENTER_FUNC () ;
 int FALSE ;
 TYPE_1__* IoGetCurrentProcess () ;
 int IsAddressValid (int ) ;
 int LEAVE_FUNC () ;
 int ListDriverModules () ;
 int ListUserModules (scalar_t__) ;
 int TRUE ;
 int pdebug_module_head ;
 int pdebug_module_tail ;

BOOLEAN BuildModuleList( void )
{
  PPEB peb;
 PEPROCESS tsk;
 ENTER_FUNC();

 pdebug_module_tail = pdebug_module_head;
 tsk = IoGetCurrentProcess();
 ASSERT(IsAddressValid((ULONG)tsk));
 if( tsk ){
  peb = tsk->Peb;
  if( peb ){
   if( !ListUserModules( peb ) ){
    LEAVE_FUNC();
    return FALSE;
   }
  }
 }
 if( !ListDriverModules() ){
  LEAVE_FUNC();
  return FALSE;
 }
 LEAVE_FUNC();
 return TRUE;
}
