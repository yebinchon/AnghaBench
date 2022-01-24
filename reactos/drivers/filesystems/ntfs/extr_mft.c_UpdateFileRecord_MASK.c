#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONGLONG ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_12__ {int BytesPerFileRecord; } ;
struct TYPE_14__ {TYPE_1__ NtfsInfo; int /*<<< orphan*/  MFTContext; } ;
struct TYPE_13__ {int /*<<< orphan*/  Ntfs; } ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  TYPE_2__* PFILE_RECORD_HEADER ;
typedef  TYPE_3__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_3__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const,int,int /*<<< orphan*/ *,TYPE_2__*) ; 

NTSTATUS
FUNC6(PDEVICE_EXTENSION Vcb,
                 ULONGLONG MftIndex,
                 PFILE_RECORD_HEADER FileRecord)
{
    ULONG BytesWritten;
    NTSTATUS Status = STATUS_SUCCESS;

    FUNC1("UpdateFileRecord(%p, 0x%I64x, %p)\n", Vcb, MftIndex, FileRecord);

    // Add the fixup array to prepare the data for writing to disk
    FUNC0(Vcb, &FileRecord->Ntfs);

    // write the file record to the master file table
    Status = FUNC5(Vcb, 
                            Vcb->MFTContext,
                            MftIndex * Vcb->NtfsInfo.BytesPerFileRecord,
                            (const PUCHAR)FileRecord,
                            Vcb->NtfsInfo.BytesPerFileRecord,
                            &BytesWritten,
                            FileRecord);

    if (!FUNC4(Status))
    {
        FUNC2("UpdateFileRecord failed: %lu written, %lu expected\n", BytesWritten, Vcb->NtfsInfo.BytesPerFileRecord);
    }

    // remove the fixup array (so the file record pointer can still be used)
    FUNC3(Vcb, &FileRecord->Ntfs);

    return Status;
}