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
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__* PANSI_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  bIsDebugPrint ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ULONG FUNC5(PANSI_STRING String)
{
	ULONG ulRingBufferLock;

  FUNC4(ulRingBufferLock);
  FUNC2();

  /* CH: What is bIsDebugPrint used for? */
  bIsDebugPrint = FALSE;

	FUNC1((0,"PICE_KdpPrintString\n\n\n"));
  FUNC0(String->Buffer);
  FUNC3(ulRingBufferLock);
}