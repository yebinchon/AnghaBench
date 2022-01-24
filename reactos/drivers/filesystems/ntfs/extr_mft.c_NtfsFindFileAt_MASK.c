#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONGLONG ;
struct TYPE_5__ {int /*<<< orphan*/  FileRecLookasideList; } ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  int /*<<< orphan*/ * PULONGLONG ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  int /*<<< orphan*/ * PFILE_RECORD_HEADER ;
typedef  TYPE_1__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 

NTSTATUS
FUNC6(PDEVICE_EXTENSION Vcb,
               PUNICODE_STRING SearchPattern,
               PULONG FirstEntry,
               PFILE_RECORD_HEADER *FileRecord,
               PULONGLONG MFTIndex,
               ULONGLONG CurrentMFTIndex,
               BOOLEAN CaseSensitive)
{
    NTSTATUS Status;

    FUNC0("NtfsFindFileAt(%p, %wZ, %lu, %p, %p, %I64x, %s)\n",
           Vcb,
           SearchPattern,
           *FirstEntry,
           FileRecord,
           MFTIndex,
           CurrentMFTIndex,
           (CaseSensitive ? "TRUE" : "FALSE"));

    Status = FUNC4(Vcb, CurrentMFTIndex, SearchPattern, FirstEntry, TRUE, CaseSensitive, &CurrentMFTIndex);
    if (!FUNC3(Status))
    {
        FUNC0("NtfsFindFileAt: NtfsFindMftRecord() failed with status 0x%08lx\n", Status);
        return Status;
    }

    *FileRecord = FUNC1(&Vcb->FileRecLookasideList);
    if (*FileRecord == NULL)
    {
        FUNC0("NtfsFindFileAt: Can't allocate MFT record\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = FUNC5(Vcb, CurrentMFTIndex, *FileRecord);
    if (!FUNC3(Status))
    {
        FUNC0("NtfsFindFileAt: Can't read MFT record\n");
        FUNC2(&Vcb->FileRecLookasideList, *FileRecord);
        return Status;
    }

    *MFTIndex = CurrentMFTIndex;

    return STATUS_SUCCESS;
}