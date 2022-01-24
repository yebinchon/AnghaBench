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
typedef  int ULONG ;
struct TYPE_9__ {int /*<<< orphan*/  Lock; TYPE_2__* Cache; } ;
struct TYPE_7__ {int /*<<< orphan*/  Address; } ;
struct TYPE_8__ {struct TYPE_8__* Next; TYPE_1__ Address; } ;
typedef  int* PULONG ;
typedef  TYPE_2__* PNEIGHBOR_CACHE_ENTRY ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_NCACHE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int NB_HASHMASK ; 
 int /*<<< orphan*/  NCE_TAG ; 
 int /*<<< orphan*/  NDIS_STATUS_REQUEST_ABORTED ; 
 TYPE_3__* NeighborCache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

VOID FUNC5(
  PNEIGHBOR_CACHE_ENTRY NCE)
/*
 * FUNCTION: Removes a neighbor from the neighbor cache
 * ARGUMENTS:
 *   NCE = Pointer to NCE to remove from cache
 * NOTES:
 *   The NCE must be in a safe state
 */
{
  PNEIGHBOR_CACHE_ENTRY *PrevNCE;
  PNEIGHBOR_CACHE_ENTRY CurNCE;
  ULONG HashValue;
  KIRQL OldIrql;

  FUNC2(DEBUG_NCACHE, ("Called. NCE (0x%X).\n", NCE));

  HashValue  = *(PULONG)(&NCE->Address.Address);
  HashValue ^= HashValue >> 16;
  HashValue ^= HashValue >> 8;
  HashValue ^= HashValue >> 4;
  HashValue &= NB_HASHMASK;

  FUNC3(&NeighborCache[HashValue].Lock, &OldIrql);

  /* Search the list and remove the NCE from the list if found */
  for (PrevNCE = &NeighborCache[HashValue].Cache;
    (CurNCE = *PrevNCE) != NULL;
    PrevNCE = &CurNCE->Next)
    {
      if (CurNCE == NCE)
        {
          /* Found it, now unlink it from the list */
          *PrevNCE = CurNCE->Next;

	  FUNC1( CurNCE, NDIS_STATUS_REQUEST_ABORTED );
          FUNC0(CurNCE, NCE_TAG);

	  break;
        }
    }

  FUNC4(&NeighborCache[HashValue].Lock, OldIrql);
}