
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* ULONG ;
struct TYPE_4__ {void* Last; void* First; } ;
typedef TYPE_1__* PIPDATAGRAM_HOLE ;


 int DEBUG_IP ;
 TYPE_1__* ExAllocateFromNPagedLookasideList (int *) ;
 int IPHoleList ;
 int MIN_TRACE ;
 int TI_DbgPrint (int ,char*) ;

PIPDATAGRAM_HOLE CreateHoleDescriptor(
  ULONG First,
  ULONG Last)
{
 PIPDATAGRAM_HOLE Hole;

 TI_DbgPrint(DEBUG_IP, ("Called. First (%d)  Last (%d).\n", First, Last));

 Hole = ExAllocateFromNPagedLookasideList(&IPHoleList);
 if (!Hole) {
     TI_DbgPrint(MIN_TRACE, ("Insufficient resources.\n"));
     return ((void*)0);
 }

 Hole->First = First;
 Hole->Last = Last;

 TI_DbgPrint(DEBUG_IP, ("Returning hole descriptor at (0x%X).\n", Hole));

 return Hole;
}
