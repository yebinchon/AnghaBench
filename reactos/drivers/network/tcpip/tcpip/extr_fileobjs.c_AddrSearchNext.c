
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ Port; scalar_t__ Protocol; int Address; } ;
struct TYPE_12__ {scalar_t__ Port; scalar_t__ Protocol; TYPE_1__* Next; int * Address; } ;
struct TYPE_11__ {struct TYPE_11__* Flink; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef int * PIP_ADDRESS ;
typedef TYPE_2__* PAF_SEARCH ;
typedef TYPE_3__* PADDRESS_FILE ;
typedef int KIRQL ;
typedef scalar_t__ BOOLEAN ;


 int A2S (int *) ;
 int ADDRESS_FILE ;
 scalar_t__ AddrReceiveMatch (int *,int *) ;
 TYPE_1__ AddressFileListHead ;
 int AddressFileListLock ;
 TYPE_3__* CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int DEBUG_ADDRFILE ;
 int DereferenceObject (TYPE_3__*) ;
 scalar_t__ FALSE ;
 int ListEntry ;
 int ReferenceObject (TYPE_3__*) ;
 int TI_DbgPrint (int ,char*) ;
 scalar_t__ TRUE ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;
 int WN2H (scalar_t__) ;

PADDRESS_FILE AddrSearchNext(
    PAF_SEARCH SearchContext)
{
    PLIST_ENTRY CurrentEntry;
    PIP_ADDRESS IPAddress;
    KIRQL OldIrql;
    PADDRESS_FILE Current = ((void*)0);
    BOOLEAN Found = FALSE;
    PADDRESS_FILE StartingAddrFile;

    TcpipAcquireSpinLock(&AddressFileListLock, &OldIrql);

    if (SearchContext->Next == &AddressFileListHead)
    {
        TcpipReleaseSpinLock(&AddressFileListLock, OldIrql);
        return ((void*)0);
    }


    StartingAddrFile = CONTAINING_RECORD(SearchContext->Next, ADDRESS_FILE, ListEntry);

    CurrentEntry = SearchContext->Next;

    while (CurrentEntry != &AddressFileListHead) {
        Current = CONTAINING_RECORD(CurrentEntry, ADDRESS_FILE, ListEntry);

        IPAddress = &Current->Address;

        TI_DbgPrint(DEBUG_ADDRFILE, ("Comparing: ((%d, %d, %s), (%d, %d, %s)).\n",
            WN2H(Current->Port),
            Current->Protocol,
            A2S(IPAddress),
            WN2H(SearchContext->Port),
            SearchContext->Protocol,
            A2S(SearchContext->Address)));


        if ((Current->Port == SearchContext->Port) &&
            (Current->Protocol == SearchContext->Protocol) &&
            (AddrReceiveMatch(IPAddress, SearchContext->Address))) {

            Found = TRUE;
            break;
        }
        CurrentEntry = CurrentEntry->Flink;
    }

    if (Found)
    {
        SearchContext->Next = CurrentEntry->Flink;

        if (SearchContext->Next != &AddressFileListHead)
        {

            ReferenceObject(CONTAINING_RECORD(SearchContext->Next, ADDRESS_FILE, ListEntry));
        }



        ReferenceObject(Current);
    }
    else
        Current = ((void*)0);

    DereferenceObject(StartingAddrFile);

    TcpipReleaseSpinLock(&AddressFileListLock, OldIrql);

    return Current;
}
