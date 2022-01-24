#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_6__ {int DataLength; scalar_t__ Type; int /*<<< orphan*/  Data; } ;
typedef  TYPE_1__* PKEY_VALUE_PARTIAL_INFORMATION ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  KeyValueObject ;
typedef  TYPE_1__ KEY_VALUE_PARTIAL_INFORMATION ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  AppCompatCacheValue ; 
 int /*<<< orphan*/  AppCompatKeyAttributes ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  KeyValuePartialInformation ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 scalar_t__ REG_BINARY ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ STATUS_BUFFER_OVERFLOW ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

void FUNC9(int IncludeDump)
{
    HANDLE KeyHandle;
    NTSTATUS Status;
    KEY_VALUE_PARTIAL_INFORMATION KeyValueObject;
    PKEY_VALUE_PARTIAL_INFORMATION KeyValueInformation = &KeyValueObject;
    ULONG KeyInfoSize, ResultSize;

    FUNC8("Dumping AppCompatCache registry key\n");

    Status = FUNC2(&KeyHandle, KEY_QUERY_VALUE, &AppCompatKeyAttributes);

    Status = FUNC3(KeyHandle, &AppCompatCacheValue,
                KeyValuePartialInformation, KeyValueInformation,
                sizeof(KeyValueObject), &ResultSize);

    if (Status == STATUS_BUFFER_OVERFLOW)
    {
        KeyInfoSize = sizeof(KEY_VALUE_PARTIAL_INFORMATION) + KeyValueInformation->DataLength;
        KeyValueInformation = FUNC7(KeyInfoSize);
        if (KeyValueInformation != NULL)
        {
            Status = FUNC3(KeyHandle, &AppCompatCacheValue,
                        KeyValuePartialInformation, KeyValueInformation,
                        KeyInfoSize, &ResultSize);
        }
    }

    if (FUNC0(Status) && KeyValueInformation->Type == REG_BINARY)
    {
        ULONG crc;
        if (IncludeDump)
            FUNC6(KeyValueInformation->Data, KeyValueInformation->DataLength);
        crc = FUNC4(0, KeyValueInformation->Data, KeyValueInformation->DataLength);
        FUNC8("Len: %lu, Crc: 0x%lx\n", KeyValueInformation->DataLength, crc);
    }
    else
    {
        FUNC8("Failed reading AppCompatCache from registry (0x%lx)\n", Status);
    }

    if (KeyValueInformation != &KeyValueObject)
        FUNC5(KeyValueInformation);

    if (KeyHandle)
        FUNC1(KeyHandle);
}