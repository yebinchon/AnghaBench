
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__* PDEBUG_MODULE ;


 int ENTER_FUNC () ;
 int ExFreePool (TYPE_1__*) ;
 int LEAVE_FUNC () ;

VOID FreeModuleList( PDEBUG_MODULE pm )
{
 PDEBUG_MODULE pNext = pm;

 ENTER_FUNC();

 while( pNext ){
  pNext = pm->next;
  ExFreePool( pm );
 }
 LEAVE_FUNC();
}
