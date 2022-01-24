#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ RefCount; struct TYPE_4__* ParentObject; int /*<<< orphan*/ * KeyHandle; } ;
typedef  TYPE_1__* PLSA_DB_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC3(PLSA_DB_OBJECT DbObject)
{
    PLSA_DB_OBJECT ParentObject = NULL;
    NTSTATUS Status = STATUS_SUCCESS;

    DbObject->RefCount--;

    if (DbObject->RefCount > 0)
        return STATUS_SUCCESS;

    if (DbObject->KeyHandle != NULL)
        FUNC0(DbObject->KeyHandle);

    if (DbObject->ParentObject != NULL)
        ParentObject = DbObject->ParentObject;

    FUNC1(FUNC2(), 0, DbObject);

    if (ParentObject != NULL)
    {
        ParentObject->RefCount--;

        if (ParentObject->RefCount == 0)
            Status = FUNC3(ParentObject);
    }

    return Status;
}