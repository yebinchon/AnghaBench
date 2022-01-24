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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
typedef  int USHORT ;
struct TYPE_14__ {int* Buffer; int Length; size_t MaximumLength; } ;
struct TYPE_13__ {int /*<<< orphan*/  lCase; int /*<<< orphan*/  ShortName; } ;
struct TYPE_12__ {int Length; int* Buffer; int MaximumLength; } ;
typedef  TYPE_1__* PUNICODE_STRING ;
typedef  TYPE_2__* PFAT_DIR_ENTRY ;
typedef  TYPE_3__ OEM_STRING ;
typedef  int CHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFAT_CASE_LOWER_BASE ; 
 int /*<<< orphan*/  VFAT_CASE_LOWER_EXT ; 

VOID
FUNC6(
    PFAT_DIR_ENTRY pEntry,
    PUNICODE_STRING NameU)
{
    OEM_STRING StringA;
    USHORT Length;
    CHAR  cString[12];

    FUNC3(cString, pEntry->ShortName, 11);
    cString[11] = 0;
    if (cString[0] == 0x05)
    {
        cString[0] = 0xe5;
    }

    StringA.Buffer = cString;
    for (StringA.Length = 0;
         StringA.Length < 8 && StringA.Buffer[StringA.Length] != ' ';
         StringA.Length++);
    StringA.MaximumLength = StringA.Length;

    FUNC5(NameU, &StringA, FALSE);

    if (FUNC0(pEntry->lCase, VFAT_CASE_LOWER_BASE))
    {
        FUNC4(NameU, NameU, FALSE);
    }

    if (cString[8] != ' ')
    {
        Length = NameU->Length;
        NameU->Buffer += Length / sizeof(WCHAR);
        if (!FUNC2(pEntry))
        {
            Length += sizeof(WCHAR);
            NameU->Buffer[0] = L'.';
            NameU->Buffer++;
        }
        NameU->Length = 0;
        NameU->MaximumLength -= Length;

        StringA.Buffer = &cString[8];
        for (StringA.Length = 0;
        StringA.Length < 3 && StringA.Buffer[StringA.Length] != ' ';
        StringA.Length++);
        StringA.MaximumLength = StringA.Length;
        FUNC5(NameU, &StringA, FALSE);
        if (FUNC0(pEntry->lCase, VFAT_CASE_LOWER_EXT))
        {
            FUNC4(NameU, NameU, FALSE);
        }
        NameU->Buffer -= Length / sizeof(WCHAR);
        NameU->Length += Length;
        NameU->MaximumLength += Length;
    }

    NameU->Buffer[NameU->Length / sizeof(WCHAR)] = 0;
    FUNC1("'%wZ'\n", NameU);
}