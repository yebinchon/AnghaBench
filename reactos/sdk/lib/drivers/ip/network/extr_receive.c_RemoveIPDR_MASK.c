#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  ListEntry; } ;
typedef  TYPE_1__* PIPDATAGRAM_REASSEMBLY ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_IP ; 
 int /*<<< orphan*/  ReassemblyListLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

VOID FUNC4(
  PIPDATAGRAM_REASSEMBLY IPDR)
/*
 * FUNCTION: Removes an IP datagram reassembly structure from the global list
 * ARGUMENTS:
 *     IPDR = Pointer to IP datagram reassembly structure
 */
{
  KIRQL OldIrql;

  FUNC1(DEBUG_IP, ("Removing IPDR at (0x%X).\n", IPDR));

  FUNC2(&ReassemblyListLock, &OldIrql);
  FUNC0(&IPDR->ListEntry);
  FUNC3(&ReassemblyListLock, OldIrql);
}