
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int ListEntry; int Metric; TYPE_1__* Router; int Netmask; int NetworkAddress; } ;
struct TYPE_6__ {int Address; } ;
typedef TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef int * PIP_ADDRESS ;
typedef TYPE_2__* PFIB_ENTRY ;
typedef int FIB_ENTRY ;


 int A2S (int *) ;
 int DEBUG_ROUTER ;
 TYPE_2__* ExAllocatePoolWithTag (int ,int,int ) ;
 int FIBListHead ;
 int FIBLock ;
 int FIB_TAG ;
 int MIN_TRACE ;
 int NonPagedPool ;
 int RtlCopyMemory (int *,int *,int) ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipInterlockedInsertTailList (int *,int *,int *) ;

PFIB_ENTRY RouterAddRoute(
    PIP_ADDRESS NetworkAddress,
    PIP_ADDRESS Netmask,
    PNEIGHBOR_CACHE_ENTRY Router,
    UINT Metric)
{
    PFIB_ENTRY FIBE;

    TI_DbgPrint(DEBUG_ROUTER, ("Called. NetworkAddress (0x%X)  Netmask (0x%X) "
        "Router (0x%X)  Metric (%d).\n", NetworkAddress, Netmask, Router, Metric));

    TI_DbgPrint(DEBUG_ROUTER, ("NetworkAddress (%s)  Netmask (%s)  Router (%s).\n",
          A2S(NetworkAddress),
          A2S(Netmask),
          A2S(&Router->Address)));

    FIBE = ExAllocatePoolWithTag(NonPagedPool, sizeof(FIB_ENTRY), FIB_TAG);
    if (!FIBE) {
        TI_DbgPrint(MIN_TRACE, ("Insufficient resources.\n"));
        return ((void*)0);
    }

    RtlCopyMemory( &FIBE->NetworkAddress, NetworkAddress,
     sizeof(FIBE->NetworkAddress) );
    RtlCopyMemory( &FIBE->Netmask, Netmask,
     sizeof(FIBE->Netmask) );
    FIBE->Router = Router;
    FIBE->Metric = Metric;


    TcpipInterlockedInsertTailList(&FIBListHead, &FIBE->ListEntry, &FIBLock);

    return FIBE;
}
