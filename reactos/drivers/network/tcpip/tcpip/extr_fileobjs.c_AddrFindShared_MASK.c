#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ USHORT ;
struct TYPE_8__ {scalar_t__ Port; scalar_t__ Protocol; scalar_t__ Sharers; } ;
struct TYPE_7__ {struct TYPE_7__* Flink; } ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/  PIP_ADDRESS ;
typedef  TYPE_2__* PADDRESS_FILE ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRESS_FILE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ AddressFileListHead ; 
 int /*<<< orphan*/  AddressFileListLock ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

PADDRESS_FILE FUNC5(
    PIP_ADDRESS BindAddress,
    USHORT Port,
    USHORT Protocol)
{
    PLIST_ENTRY CurrentEntry;
    KIRQL OldIrql;
    PADDRESS_FILE Current = NULL;

    FUNC3(&AddressFileListLock, &OldIrql);

    CurrentEntry = AddressFileListHead.Flink;
    while (CurrentEntry != &AddressFileListHead) {
        Current = FUNC1(CurrentEntry, ADDRESS_FILE, ListEntry);

        /* See if this address matches the search criteria */
        if ((Current->Port == Port) &&
            (Current->Protocol == Protocol))
        {
            /* Increase the sharer count */
            FUNC0(Current->Sharers != 0);
            FUNC2(&Current->Sharers);
            break;
        }

        CurrentEntry = CurrentEntry->Flink;
        Current = NULL;
    }

    FUNC4(&AddressFileListLock, OldIrql);

    return Current;
}