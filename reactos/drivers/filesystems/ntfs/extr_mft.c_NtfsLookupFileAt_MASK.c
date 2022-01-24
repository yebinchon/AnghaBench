#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ Length; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  ULONGLONG ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_13__ {int /*<<< orphan*/  FileRecLookasideList; } ;
typedef  TYPE_1__* PUNICODE_STRING ;
typedef  int /*<<< orphan*/ * PULONGLONG ;
typedef  int /*<<< orphan*/ * PFILE_RECORD_HEADER ;
typedef  TYPE_3__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC7(PDEVICE_EXTENSION Vcb,
                 PUNICODE_STRING PathName,
                 BOOLEAN CaseSensitive,
                 PFILE_RECORD_HEADER *FileRecord,
                 PULONGLONG MFTIndex,
                 ULONGLONG CurrentMFTIndex)
{
    UNICODE_STRING Current, Remaining;
    NTSTATUS Status;
    ULONG FirstEntry = 0;

    FUNC0("NtfsLookupFileAt(%p, %wZ, %s, %p, %p, %I64x)\n",
           Vcb,
           PathName,
           CaseSensitive ? "TRUE" : "FALSE",
           FileRecord,
           MFTIndex,
           CurrentMFTIndex);

    FUNC3(*PathName, &Current, &Remaining);

    while (Current.Length != 0)
    {
        FUNC0("Current: %wZ\n", &Current);

        Status = FUNC5(Vcb, CurrentMFTIndex, &Current, &FirstEntry, FALSE, CaseSensitive, &CurrentMFTIndex);
        if (!FUNC4(Status))
        {
            return Status;
        }

        if (Remaining.Length == 0)
            break;

        FUNC3(Current, &Current, &Remaining);
    }

    *FileRecord = FUNC1(&Vcb->FileRecLookasideList);
    if (*FileRecord == NULL)
    {
        FUNC0("NtfsLookupFileAt: Can't allocate MFT record\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = FUNC6(Vcb, CurrentMFTIndex, *FileRecord);
    if (!FUNC4(Status))
    {
        FUNC0("NtfsLookupFileAt: Can't read MFT record\n");
        FUNC2(&Vcb->FileRecLookasideList, *FileRecord);
        return Status;
    }

    *MFTIndex = CurrentMFTIndex;

    return STATUS_SUCCESS;
}