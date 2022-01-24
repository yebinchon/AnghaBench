#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  NetworkAddress; TYPE_1__* Router; } ;
struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {int /*<<< orphan*/  Address; } ;
typedef  TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef  TYPE_2__* PLIST_ENTRY ;
typedef  TYPE_3__* PFIB_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG_ROUTER ; 
 TYPE_2__ FIBListHead ; 
 int /*<<< orphan*/  FIB_ENTRY ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3() {
    PLIST_ENTRY CurrentEntry;
    PLIST_ENTRY NextEntry;
    PFIB_ENTRY Current;
    PNEIGHBOR_CACHE_ENTRY NCE;

    FUNC2(DEBUG_ROUTER,("Dumping Routes\n"));

    CurrentEntry = FIBListHead.Flink;
    while (CurrentEntry != &FIBListHead) {
        NextEntry = CurrentEntry->Flink;
	Current = FUNC1(CurrentEntry, FIB_ENTRY, ListEntry);

        NCE   = Current->Router;

	FUNC2(DEBUG_ROUTER,("Examining FIBE %x\n", Current));
	FUNC2(DEBUG_ROUTER,("... NetworkAddress %s\n", FUNC0(&Current->NetworkAddress)));
	FUNC2(DEBUG_ROUTER,("... NCE->Address . %s\n", FUNC0(&NCE->Address)));

	CurrentEntry = NextEntry;
    }

    FUNC2(DEBUG_ROUTER,("Dumping Routes ... Done\n"));
}