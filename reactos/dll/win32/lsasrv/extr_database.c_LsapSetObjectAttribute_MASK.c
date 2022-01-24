#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  KeyHandle; } ;
typedef  TYPE_1__* PLSA_DB_OBJECT ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_SET_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  REG_NONE ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC7(PLSA_DB_OBJECT DbObject,
                       LPWSTR AttributeName,
                       LPVOID AttributeData,
                       ULONG AttributeSize)
{
    OBJECT_ATTRIBUTES ObjectAttributes;
    UNICODE_STRING KeyName;
    HANDLE AttributeKey;
    NTSTATUS Status;

    FUNC5(&KeyName,
                         AttributeName);

    FUNC1(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               DbObject->KeyHandle,
                               NULL);

    Status = FUNC4(&AttributeKey,
                         KEY_SET_VALUE,
                         &ObjectAttributes,
                         0,
                         NULL,
                         REG_OPTION_NON_VOLATILE,
                         NULL);
    if (!FUNC2(Status))
    {
        FUNC0("NtCreateKey failed for '%S' with status 0x%lx\n",
            AttributeName, Status);
        return Status;
    }

    Status = FUNC6(AttributeKey,
                               REG_NONE,
                               AttributeData,
                               AttributeSize);

    FUNC3(AttributeKey);

    if (!FUNC2(Status))
    {
        FUNC0("RtlpNtSetValueKey failed for '%S' with status 0x%lx\n",
            AttributeName, Status);
    }

    return Status;
}