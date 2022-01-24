#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ Port; scalar_t__ Protocol; int /*<<< orphan*/  Address; } ;
struct TYPE_12__ {scalar_t__ Port; scalar_t__ Protocol; TYPE_1__* Next; int /*<<< orphan*/ * Address; } ;
struct TYPE_11__ {struct TYPE_11__* Flink; } ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/ * PIP_ADDRESS ;
typedef  TYPE_2__* PAF_SEARCH ;
typedef  TYPE_3__* PADDRESS_FILE ;
typedef  int /*<<< orphan*/  KIRQL ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ADDRESS_FILE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ AddressFileListHead ; 
 int /*<<< orphan*/  AddressFileListLock ; 
 TYPE_3__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG_ADDRFILE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

PADDRESS_FILE FUNC9(
    PAF_SEARCH SearchContext)
{
    PLIST_ENTRY CurrentEntry;
    PIP_ADDRESS IPAddress;
    KIRQL OldIrql;
    PADDRESS_FILE Current = NULL;
    BOOLEAN Found = FALSE;
    PADDRESS_FILE StartingAddrFile;
    
    FUNC6(&AddressFileListLock, &OldIrql);

    if (SearchContext->Next == &AddressFileListHead)
    {
        FUNC7(&AddressFileListLock, OldIrql);
        return NULL;
    }

    /* Save this pointer so we can dereference it later */
    StartingAddrFile = FUNC2(SearchContext->Next, ADDRESS_FILE, ListEntry);

    CurrentEntry = SearchContext->Next;

    while (CurrentEntry != &AddressFileListHead) {
        Current = FUNC2(CurrentEntry, ADDRESS_FILE, ListEntry);

        IPAddress = &Current->Address;

        FUNC5(DEBUG_ADDRFILE, ("Comparing: ((%d, %d, %s), (%d, %d, %s)).\n",
            FUNC8(Current->Port),
            Current->Protocol,
            FUNC0(IPAddress),
            FUNC8(SearchContext->Port),
            SearchContext->Protocol,
            FUNC0(SearchContext->Address)));

        /* See if this address matches the search criteria */
        if ((Current->Port    == SearchContext->Port) &&
            (Current->Protocol == SearchContext->Protocol) &&
            (FUNC1(IPAddress, SearchContext->Address))) {
            /* We've found a match */
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
            /* Reference the next address file to prevent the link from disappearing behind our back */
            FUNC4(FUNC2(SearchContext->Next, ADDRESS_FILE, ListEntry));
        }

        /* Reference the returned address file before dereferencing the starting
         * address file because it may be that Current == StartingAddrFile */
        FUNC4(Current);
    }
    else
        Current = NULL;

    FUNC3(StartingAddrFile);

    FUNC7(&AddressFileListLock, OldIrql);

    return Current;
}