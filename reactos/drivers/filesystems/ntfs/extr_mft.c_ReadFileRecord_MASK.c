#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONGLONG ;
struct TYPE_9__ {int BytesPerFileRecord; } ;
struct TYPE_11__ {TYPE_1__ NtfsInfo; int /*<<< orphan*/  MFTContext; } ;
struct TYPE_10__ {int /*<<< orphan*/  Ntfs; int /*<<< orphan*/  SequenceNumber; } ;
typedef  TYPE_2__* PFILE_RECORD_HEADER ;
typedef  TYPE_3__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STATUS_PARTIAL_COPY ; 

NTSTATUS
FUNC4(PDEVICE_EXTENSION Vcb,
               ULONGLONG index,
               PFILE_RECORD_HEADER file)
{
    ULONGLONG BytesRead;

    FUNC0("ReadFileRecord(%p, %I64x, %p)\n", Vcb, index, file);

    BytesRead = FUNC3(Vcb, Vcb->MFTContext, index * Vcb->NtfsInfo.BytesPerFileRecord, (PCHAR)file, Vcb->NtfsInfo.BytesPerFileRecord);
    if (BytesRead != Vcb->NtfsInfo.BytesPerFileRecord)
    {
        FUNC1("ReadFileRecord failed: %I64u read, %lu expected\n", BytesRead, Vcb->NtfsInfo.BytesPerFileRecord);
        return STATUS_PARTIAL_COPY;
    }

    /* Apply update sequence array fixups. */
    FUNC0("Sequence number: %u\n", file->SequenceNumber);
    return FUNC2(Vcb, &file->Ntfs);
}