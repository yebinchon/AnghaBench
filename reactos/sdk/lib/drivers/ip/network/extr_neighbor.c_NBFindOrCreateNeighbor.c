
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int AddressLength; int Broadcast; } ;
typedef int * PNEIGHBOR_CACHE_ENTRY ;
typedef TYPE_1__* PIP_INTERFACE ;
typedef int PIP_ADDRESS ;
typedef scalar_t__ BOOLEAN ;


 int A2S (int *) ;
 int ARP_INCOMPLETE_TIMEOUT ;
 scalar_t__ AddrIsEqual (int ,int *) ;
 scalar_t__ AddrIsUnspecified (int ) ;
 int DEBUG_NCACHE ;
 int MID_TRACE ;
 int * NBAddNeighbor (TYPE_1__*,int ,int *,int ,int ,int ) ;
 int * NBLocateNeighbor (int ,TYPE_1__*) ;
 int NBSendSolicit (int *) ;
 int NUD_INCOMPLETE ;
 int NUD_PERMANENT ;
 int TI_DbgPrint (int ,char*) ;

PNEIGHBOR_CACHE_ENTRY NBFindOrCreateNeighbor(
  PIP_INTERFACE Interface,
  PIP_ADDRESS Address,
  BOOLEAN NoTimeout)
{
  PNEIGHBOR_CACHE_ENTRY NCE;

  TI_DbgPrint(DEBUG_NCACHE, ("Called. Interface (0x%X)  Address (0x%X).\n", Interface, Address));

  NCE = NBLocateNeighbor(Address, Interface);
  if (NCE == ((void*)0))
    {
        TI_DbgPrint(MID_TRACE,("BCAST: %s\n", A2S(&Interface->Broadcast)));
        if( AddrIsEqual(Address, &Interface->Broadcast) ||
            AddrIsUnspecified(Address) ) {
            TI_DbgPrint(MID_TRACE,("Packet targeted at broadcast addr\n"));
            NCE = NBAddNeighbor(Interface, Address, ((void*)0),
                                Interface->AddressLength, NUD_PERMANENT, 0);
        } else {
            NCE = NBAddNeighbor(Interface, Address, ((void*)0),
                                Interface->AddressLength, NUD_INCOMPLETE, NoTimeout ? 0 : ARP_INCOMPLETE_TIMEOUT);
            if (!NCE) return ((void*)0);
            NBSendSolicit(NCE);
        }
    }

  return NCE;
}
