
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int State; int Interface; int * LinkAddress; int Address; } ;
typedef TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;


 int ARPTransmit (int *,int *,int ) ;
 int DEBUG_NCACHE ;
 int NUD_INCOMPLETE ;
 int TI_DbgPrint (int ,char*) ;

VOID NBSendSolicit(PNEIGHBOR_CACHE_ENTRY NCE)







{
    TI_DbgPrint(DEBUG_NCACHE, ("Called. NCE (0x%X).\n", NCE));

    ARPTransmit(&NCE->Address,
                (NCE->State & NUD_INCOMPLETE) ? ((void*)0) : NCE->LinkAddress,
                NCE->Interface);
}
