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
typedef  int /*<<< orphan*/  VOID ;
typedef  int UINT ;
struct TYPE_9__ {int /*<<< orphan*/  Lock; TYPE_1__* Cache; } ;
struct TYPE_8__ {int /*<<< orphan*/  Address; } ;
struct TYPE_7__ {scalar_t__ EventCount; int /*<<< orphan*/  Address; struct TYPE_7__* Next; } ;
typedef  int* PULONG ;
typedef  TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef  TYPE_2__* PIP_ADDRESS ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DEBUG_NCACHE ; 
 int NB_HASHMASK ; 
 TYPE_3__* NeighborCache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

VOID
FUNC5(PIP_ADDRESS Address)
{
    KIRQL OldIrql;
    UINT HashValue;
    PNEIGHBOR_CACHE_ENTRY NCE;

    FUNC2(DEBUG_NCACHE, ("Resetting NCE timout for 0x%s\n", FUNC0(Address)));

    HashValue  = *(PULONG)(&Address->Address);
    HashValue ^= HashValue >> 16;
    HashValue ^= HashValue >> 8;
    HashValue ^= HashValue >> 4;
    HashValue &= NB_HASHMASK;

    FUNC3(&NeighborCache[HashValue].Lock, &OldIrql);

    for (NCE = NeighborCache[HashValue].Cache;
         NCE != NULL;
         NCE = NCE->Next)
    {
         if (FUNC1(Address, &NCE->Address))
         {
             NCE->EventCount = 0;
             break;
         }
    }

    FUNC4(&NeighborCache[HashValue].Lock, OldIrql);
}