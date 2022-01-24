#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_10__ {int /*<<< orphan*/  LastErrorCode; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* FlushOutputRoutine ) (TYPE_2__*) ;int /*<<< orphan*/  (* FlushInputRoutine ) (TYPE_2__*) ;} ;
struct TYPE_8__ {int DeviceInfo; int /*<<< orphan*/  Win32Handle; int /*<<< orphan*/  DevicePointer; } ;
typedef  TYPE_1__* PDOS_FILE_DESCRIPTOR ;
typedef  TYPE_2__* PDOS_DEVICE_NODE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_INFO_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_5__* Sda ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

BOOL FUNC5(WORD FileHandle)
{
    PDOS_FILE_DESCRIPTOR Descriptor = FUNC1(FileHandle);

    if (Descriptor == NULL)
    {
        /* Invalid handle */
        Sda->LastErrorCode = ERROR_INVALID_HANDLE;
        return FALSE;
    }

    if (Descriptor->DeviceInfo & FILE_INFO_DEVICE)
    {
        PDOS_DEVICE_NODE Node = FUNC0(Descriptor->DevicePointer);

        if (Node->FlushInputRoutine) Node->FlushInputRoutine(Node);
        if (Node->FlushOutputRoutine) Node->FlushOutputRoutine(Node);

        return TRUE;
    }
    else
    {
        return FUNC2(Descriptor->Win32Handle);
    }
}