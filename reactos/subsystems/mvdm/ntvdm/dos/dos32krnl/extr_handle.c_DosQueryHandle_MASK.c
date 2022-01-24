#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t WORD ;
struct TYPE_5__ {scalar_t__ CurrentPsp; } ;
struct TYPE_4__ {int /*<<< orphan*/  HandleTablePtr; } ;
typedef  TYPE_1__* PDOS_PSP ;
typedef  int* LPBYTE ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 scalar_t__ SYSTEM_PSP ; 
 TYPE_2__* Sda ; 

BYTE FUNC3(WORD DosHandle)
{
    PDOS_PSP PspBlock;
    LPBYTE HandleTable;

    FUNC0("DosQueryHandle: DosHandle 0x%04X\n", DosHandle);

    /* The system PSP has no handle table */
    if (Sda->CurrentPsp == SYSTEM_PSP) return 0xFF;

    /* Get a pointer to the handle table */
    PspBlock = FUNC2(Sda->CurrentPsp);
    HandleTable = (LPBYTE)FUNC1(PspBlock->HandleTablePtr);

    /* Return the descriptor ID */
    return HandleTable[DosHandle];
}