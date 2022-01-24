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
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  KeyHandle; } ;
typedef  scalar_t__* PULONG ;
typedef  TYPE_1__* PLSA_DB_OBJECT ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ STATUS_BUFFER_OVERFLOW ; 
 scalar_t__ STATUS_SUCCESS ; 

NTSTATUS
FUNC6(PLSA_DB_OBJECT DbObject,
                       LPWSTR AttributeName,
                       LPVOID AttributeData,
                       PULONG AttributeSize)
{
    OBJECT_ATTRIBUTES ObjectAttributes;
    UNICODE_STRING KeyName;
    HANDLE AttributeKey;
    ULONG ValueSize;
    NTSTATUS Status;

    FUNC4(&KeyName,
                         AttributeName);

    FUNC0(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               DbObject->KeyHandle,
                               NULL);

    Status = FUNC3(&AttributeKey,
                       KEY_QUERY_VALUE,
                       &ObjectAttributes);
    if (!FUNC1(Status))
    {
        return Status;
    }

    ValueSize = *AttributeSize;
    Status = FUNC5(AttributeKey,
                                 NULL,
                                 NULL,
                                 &ValueSize,
                                 0);
    if (!FUNC1(Status) && Status != STATUS_BUFFER_OVERFLOW)
    {
        goto Done;
    }

    if (AttributeData == NULL || *AttributeSize == 0)
    {
        *AttributeSize = ValueSize;
        Status = STATUS_SUCCESS;
        goto Done;
    }
    else if (*AttributeSize < ValueSize)
    {
        *AttributeSize = ValueSize;
        Status = STATUS_BUFFER_OVERFLOW;
        goto Done;
    }

    Status = FUNC5(AttributeKey,
                                 NULL,
                                 AttributeData,
                                 &ValueSize,
                                 0);
    if (FUNC1(Status))
    {
        *AttributeSize = ValueSize;
    }

Done:
    FUNC2(AttributeKey);

    return Status;
}