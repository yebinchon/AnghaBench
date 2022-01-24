#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  NameInformation; int /*<<< orphan*/  PositionInformation; int /*<<< orphan*/  EaInformation; int /*<<< orphan*/  InternalInformation; int /*<<< orphan*/  StandardInformation; int /*<<< orphan*/  BasicInformation; } ;
struct TYPE_13__ {int /*<<< orphan*/  FileName; } ;
typedef  TYPE_1__* PVFATFCB ;
typedef  scalar_t__* PULONG ;
typedef  int /*<<< orphan*/  PFILE_OBJECT ;
typedef  TYPE_1__* PFILE_ALL_INFORMATION ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  FILE_MODE_INFORMATION ;
typedef  int /*<<< orphan*/  FILE_ALIGNMENT_INFORMATION ;
typedef  int /*<<< orphan*/  FILE_ACCESS_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ALL_INFORMATION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_11__ NameInformation ; 
 int /*<<< orphan*/  STATUS_BUFFER_OVERFLOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static
NTSTATUS
FUNC9(
    PFILE_OBJECT FileObject,
    PVFATFCB Fcb,
    PDEVICE_EXTENSION DeviceExt,
    PFILE_ALL_INFORMATION Info,
    PULONG BufferLength)
{
    NTSTATUS Status;

    FUNC0(Info);
    FUNC0(Fcb);

    if (*BufferLength < FUNC1(FILE_ALL_INFORMATION, NameInformation.FileName))
        return STATUS_BUFFER_OVERFLOW;

    *BufferLength -= (sizeof(FILE_ACCESS_INFORMATION) + sizeof(FILE_MODE_INFORMATION) + sizeof(FILE_ALIGNMENT_INFORMATION));

    /* Basic Information */
    Status = FUNC3(FileObject, Fcb, DeviceExt, &Info->BasicInformation, BufferLength);
    if (!FUNC2(Status)) return Status;
    /* Standard Information */
    Status = FUNC8(Fcb, &Info->StandardInformation, BufferLength);
    if (!FUNC2(Status)) return Status;
    /* Internal Information */
    Status = FUNC5(Fcb, DeviceExt, &Info->InternalInformation, BufferLength);
    if (!FUNC2(Status)) return Status;
    /* EA Information */
    Status = FUNC4(FileObject, Fcb, DeviceExt, &Info->EaInformation, BufferLength);
    if (!FUNC2(Status)) return Status;
    /* Position Information */
    Status = FUNC7(FileObject, Fcb, DeviceExt, &Info->PositionInformation, BufferLength);
    if (!FUNC2(Status)) return Status;
    /* Name Information */
    Status = FUNC6(FileObject, Fcb, DeviceExt, &Info->NameInformation, BufferLength);

    return Status;
}