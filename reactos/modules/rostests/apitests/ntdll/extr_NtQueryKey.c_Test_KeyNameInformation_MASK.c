#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {int Length; int MaximumLength; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_11__ {int NameLength; int /*<<< orphan*/  Name; } ;
typedef  TYPE_2__* PKEY_NAME_INFORMATION ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_NAME_INFORMATION ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  KeyNameInformation ; 
 int /*<<< orphan*/ * Name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 TYPE_1__ FUNC5 (char*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  STATUS_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static
void
FUNC14(void)
{
    UNICODE_STRING HKLM_Name = FUNC5(L"\\Registry\\Machine");
    UNICODE_STRING HKLM_Software_Name = FUNC5(L"\\Registry\\Machine\\Software");
    UNICODE_STRING Software_Name = FUNC5(L"Software");
    UNICODE_STRING InfoName;
    HANDLE HKLM_Key, HKLM_Software_Key;
    PKEY_NAME_INFORMATION NameInformation;
    ULONG InfoLength;
    OBJECT_ATTRIBUTES ObjectAttributes;
    NTSTATUS Status;

    /* Open the HKCU key */
    FUNC1(&ObjectAttributes,
        &HKLM_Name,
        OBJ_CASE_INSENSITIVE,
        NULL,
        NULL);
    Status = FUNC3(&HKLM_Key, KEY_READ, &ObjectAttributes);
    FUNC11(Status, STATUS_SUCCESS);

    /* Get the name info length */
    InfoLength = 0;
    Status = FUNC4(HKLM_Key, KeyNameInformation, NULL, 0, &InfoLength);
    FUNC11(Status, STATUS_BUFFER_TOO_SMALL);
    FUNC12(InfoLength, FUNC0(KEY_NAME_INFORMATION, Name[HKLM_Name.Length/sizeof(WCHAR)]));

    /* Get it for real */
    NameInformation = FUNC6(FUNC9(), 0, InfoLength);
    if (!NameInformation)
    {
        FUNC13("Out of memory\n");
        return;
    }

    Status = FUNC4(HKLM_Key, KeyNameInformation, NameInformation, InfoLength, &InfoLength);
    FUNC11(Status, STATUS_SUCCESS);
    FUNC12(InfoLength, FUNC0(KEY_NAME_INFORMATION, Name[HKLM_Name.Length/sizeof(WCHAR)]));
    FUNC12(NameInformation->NameLength, HKLM_Name.Length);

    InfoName.Buffer = NameInformation->Name;
    InfoName.Length = NameInformation->NameLength;
    InfoName.MaximumLength = NameInformation->NameLength;
    FUNC10(FUNC7(&InfoName, &HKLM_Name, TRUE) == 0, "%.*S\n",
        InfoName.Length, InfoName.Buffer);

    FUNC8(FUNC9(), 0, NameInformation);

    /* Open one subkey */
    FUNC1(&ObjectAttributes,
        &Software_Name,
        OBJ_CASE_INSENSITIVE,
        HKLM_Key,
        NULL);
    Status = FUNC3(&HKLM_Software_Key, KEY_READ, &ObjectAttributes);
    FUNC11(Status, STATUS_SUCCESS);

    /* Get the name info length */
    InfoLength = 0;
    Status = FUNC4(HKLM_Software_Key, KeyNameInformation, NULL, 0, &InfoLength);
    FUNC11(Status, STATUS_BUFFER_TOO_SMALL);
    FUNC12(InfoLength, FUNC0(KEY_NAME_INFORMATION, Name[HKLM_Software_Name.Length/sizeof(WCHAR)]));

    /* Get it for real */
    NameInformation = FUNC6(FUNC9(), 0, InfoLength);
    FUNC10(NameInformation != NULL, "\n");

    Status = FUNC4(HKLM_Software_Key, KeyNameInformation, NameInformation, InfoLength, &InfoLength);
    FUNC11(Status, STATUS_SUCCESS);
    FUNC12(InfoLength, FUNC0(KEY_NAME_INFORMATION, Name[HKLM_Software_Name.Length/sizeof(WCHAR)]));
    FUNC12(NameInformation->NameLength, HKLM_Software_Name.Length);

    InfoName.Buffer = NameInformation->Name;
    InfoName.Length = NameInformation->NameLength;
    InfoName.MaximumLength = NameInformation->NameLength;
    FUNC10(FUNC7(&InfoName, &HKLM_Software_Name, TRUE) == 0, "%.*S\n",
        InfoName.Length, InfoName.Buffer);

    FUNC8(FUNC9(), 0, NameInformation);

    FUNC2(HKLM_Software_Key);
    FUNC2(HKLM_Key);
}