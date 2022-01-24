#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int USHORT ;
struct TYPE_15__ {int Length; } ;
struct TYPE_14__ {scalar_t__ Length; int MaximumLength; scalar_t__* Buffer; } ;
struct TYPE_13__ {TYPE_9__ PathNameU; } ;
typedef  scalar_t__* PWCHAR ;
typedef  TYPE_1__* PVFATFCB ;
typedef  TYPE_2__* PUNICODE_STRING ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int LONGNAME_MAX_LENGTH ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_9__*) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_OBJECT_NAME_INVALID ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TAG_FCB ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static
NTSTATUS
FUNC6(
    PVFATFCB directoryFCB,
    PUNICODE_STRING LongNameU,
    PUNICODE_STRING ShortNameU,
    PUNICODE_STRING NameU)
{
    PWCHAR PathNameBuffer;
    USHORT PathNameLength;

    PathNameLength = directoryFCB->PathNameU.Length + FUNC4(LongNameU->Length, ShortNameU->Length);
    if (!FUNC5(directoryFCB))
    {
        PathNameLength += sizeof(WCHAR);
    }

    if (PathNameLength > LONGNAME_MAX_LENGTH * sizeof(WCHAR))
    {
        return  STATUS_OBJECT_NAME_INVALID;
    }
    PathNameBuffer = FUNC0(NonPagedPool, PathNameLength + sizeof(WCHAR), TAG_FCB);
    if (!PathNameBuffer)
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }
    NameU->Buffer = PathNameBuffer;
    NameU->Length = 0;
    NameU->MaximumLength = PathNameLength;

    FUNC3(NameU, &directoryFCB->PathNameU);
    if (!FUNC5(directoryFCB))
    {
        FUNC2(NameU, L"\\");
    }
    if (LongNameU->Length > 0)
    {
        FUNC1(NameU, LongNameU);
    }
    else
    {
        FUNC1(NameU, ShortNameU);
    }
    NameU->Buffer[NameU->Length / sizeof(WCHAR)] = 0;

    return STATUS_SUCCESS;
}