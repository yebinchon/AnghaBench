#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ ULONG ;
struct TYPE_4__ {scalar_t__ BytesInUse; } ;
typedef  int /*<<< orphan*/ * PUCHAR ;
typedef  TYPE_1__* PFILE_RECORD_HEADER ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

VOID
FUNC2(PDEVICE_EXTENSION Vcb,
                   PFILE_RECORD_HEADER FileRecord)
{
    ULONG i, j;

    // dump binary data, 8 bytes at a time
    for (i = 0; i < FileRecord->BytesInUse; i += 8)
    {
        // display current offset, in hex
        FUNC0("\t%03x\t", i);

        // display hex value of each of the next 8 bytes
        for (j = 0; j < 8; j++)
            FUNC0("%02x ", *(PUCHAR)((ULONG_PTR)FileRecord + i + j));
        FUNC0("\n");
    }

    FUNC1(Vcb, FileRecord);
}