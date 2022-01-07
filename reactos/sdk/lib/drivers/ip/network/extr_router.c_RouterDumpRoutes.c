
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int NetworkAddress; TYPE_1__* Router; } ;
struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {int Address; } ;
typedef TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef TYPE_3__* PFIB_ENTRY ;


 int A2S (int *) ;
 TYPE_3__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int DEBUG_ROUTER ;
 TYPE_2__ FIBListHead ;
 int FIB_ENTRY ;
 int ListEntry ;
 int TI_DbgPrint (int ,char*) ;

void RouterDumpRoutes() {
    PLIST_ENTRY CurrentEntry;
    PLIST_ENTRY NextEntry;
    PFIB_ENTRY Current;
    PNEIGHBOR_CACHE_ENTRY NCE;

    TI_DbgPrint(DEBUG_ROUTER,("Dumping Routes\n"));

    CurrentEntry = FIBListHead.Flink;
    while (CurrentEntry != &FIBListHead) {
        NextEntry = CurrentEntry->Flink;
 Current = CONTAINING_RECORD(CurrentEntry, FIB_ENTRY, ListEntry);

        NCE = Current->Router;

 TI_DbgPrint(DEBUG_ROUTER,("Examining FIBE %x\n", Current));
 TI_DbgPrint(DEBUG_ROUTER,("... NetworkAddress %s\n", A2S(&Current->NetworkAddress)));
 TI_DbgPrint(DEBUG_ROUTER,("... NCE->Address . %s\n", A2S(&NCE->Address)));

 CurrentEntry = NextEntry;
    }

    TI_DbgPrint(DEBUG_ROUTER,("Dumping Routes ... Done\n"));
}
