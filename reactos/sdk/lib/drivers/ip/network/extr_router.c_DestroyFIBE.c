
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int ListEntry; } ;
typedef TYPE_1__* PFIB_ENTRY ;


 int DEBUG_ROUTER ;
 int FreeFIB (TYPE_1__*) ;
 int RemoveEntryList (int *) ;
 int TI_DbgPrint (int ,char*) ;

VOID DestroyFIBE(
    PFIB_ENTRY FIBE)







{
    TI_DbgPrint(DEBUG_ROUTER, ("Called. FIBE (0x%X).\n", FIBE));


    RemoveEntryList(&FIBE->ListEntry);


    FreeFIB(FIBE);
}
