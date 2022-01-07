
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* Flink; } ;
struct TYPE_11__ {TYPE_3__ head; } ;
struct TYPE_8__ {int Buffer; } ;
struct TYPE_9__ {TYPE_1__ Name; } ;
typedef TYPE_2__* POBJECT_HEADER ;
typedef int * POBJECT ;
typedef TYPE_3__* PLIST_ENTRY ;
typedef int * PDIRECTORY_OBJECT ;


 TYPE_2__* CONTAINING_RECORD (TYPE_3__*,int ,int ) ;
 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int Entry ;
 int * HEADER_TO_BODY (TYPE_2__*) ;
 int LEAVE_FUNC () ;
 int OBJECT_HEADER ;
 scalar_t__ _wcsicmp (int ,char*) ;
 TYPE_4__** pNameSpaceRoot ;

POBJECT FindDriverObjectDirectory( void )
{
    PLIST_ENTRY current;
    POBJECT_HEADER current_obj;
 PDIRECTORY_OBJECT pd;

 ENTER_FUNC();

 if( pNameSpaceRoot && *pNameSpaceRoot ){
  current = (*pNameSpaceRoot)->head.Flink;
  while (current!=(&((*pNameSpaceRoot)->head)))
  {
   current_obj = CONTAINING_RECORD(current,OBJECT_HEADER,Entry);
       DPRINT((0,"Scanning %S\n",current_obj->Name.Buffer));
   if (_wcsicmp(current_obj->Name.Buffer, L"Modules")==0)
   {
    pd=HEADER_TO_BODY(current_obj);
    DPRINT((0,"Found it %x\n",pd));
    return pd;
   }
     current = current->Flink;
  }
 }
 LEAVE_FUNC();
 return ((void*)0);
}
