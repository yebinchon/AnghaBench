#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  MaximumLength; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  scalar_t__ ULONG ;
struct TYPE_8__ {int /*<<< orphan*/  NameLength; int /*<<< orphan*/  Name; } ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  TYPE_2__* PKEY_NAME_INFORMATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  KeyNameInformation ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  RTL_DUPLICATE_UNICODE_STRING_NULL_TERMINATE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  STATUS_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void
FUNC7(HKEY hKey, PUNICODE_STRING KeyName)
{
    UNICODE_STRING InfoName;
    PKEY_NAME_INFORMATION NameInformation;
    ULONG InfoLength;
    NTSTATUS Status;

    /* Get info length */
    InfoLength = 0;
    Status = FUNC0(hKey, KeyNameInformation, NULL, 0, &InfoLength);
    FUNC6(Status, STATUS_BUFFER_TOO_SMALL);

    /* Get it for real */
    NameInformation = FUNC1(FUNC4(), 0, InfoLength);
    FUNC5(NameInformation != NULL, "\n");

    Status = FUNC0(hKey, KeyNameInformation, NameInformation, InfoLength, &InfoLength);
    FUNC6(Status, STATUS_SUCCESS);

    InfoName.Buffer = NameInformation->Name;
    InfoName.Length = NameInformation->NameLength;
    InfoName.MaximumLength = InfoName.Length;

    FUNC2(RTL_DUPLICATE_UNICODE_STRING_NULL_TERMINATE, &InfoName, KeyName);

    FUNC3(FUNC4(), 0, NameInformation);
}