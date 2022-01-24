#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t WORD ;
struct TYPE_8__ {scalar_t__ CurrentPsp; } ;
struct TYPE_7__ {int /*<<< orphan*/  RefCount; } ;
struct TYPE_6__ {int /*<<< orphan*/  HandleTablePtr; } ;
typedef  TYPE_1__* PDOS_PSP ;
typedef  TYPE_2__* PDOS_FILE_DESCRIPTOR ;
typedef  int* LPBYTE ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (scalar_t__) ; 
 scalar_t__ SYSTEM_PSP ; 
 TYPE_3__* Sda ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC5(WORD OldHandle, WORD NewHandle)
{
    BYTE DescriptorId;
    PDOS_PSP PspBlock;
    LPBYTE HandleTable;
    PDOS_FILE_DESCRIPTOR Descriptor;

    FUNC0("DosForceDuplicateHandle: OldHandle 0x%04X, NewHandle 0x%04X\n",
           OldHandle,
           NewHandle);

    /* The system PSP has no handle table */
    if (Sda->CurrentPsp == SYSTEM_PSP) return FALSE;

    /* Get a pointer to the handle table */
    PspBlock = FUNC4(Sda->CurrentPsp);
    HandleTable = (LPBYTE)FUNC3(PspBlock->HandleTablePtr);

    /* Make sure the old handle is open */
    if (HandleTable[OldHandle] == 0xFF) return FALSE;

    /* Check if the new handle is open */
    if (HandleTable[NewHandle] != 0xFF)
    {
        /* Close it */
        FUNC1(NewHandle);
    }

    DescriptorId = HandleTable[OldHandle];
    Descriptor = FUNC2(DescriptorId);
    if (Descriptor == NULL) return FALSE;

    /* Increment the reference count of the descriptor */
    Descriptor->RefCount++;

    /* Make the new handle point to that descriptor */
    HandleTable[NewHandle] = DescriptorId;

    /* Return success */
    return TRUE;
}