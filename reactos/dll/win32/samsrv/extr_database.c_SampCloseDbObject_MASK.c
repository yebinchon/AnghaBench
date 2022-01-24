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
struct TYPE_4__ {scalar_t__ RefCount; struct TYPE_4__* Name; int /*<<< orphan*/  MembersKeyHandle; int /*<<< orphan*/  KeyHandle; } ;
typedef  TYPE_1__* PSAM_DB_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

NTSTATUS
FUNC3(PSAM_DB_OBJECT DbObject)
{
    NTSTATUS Status = STATUS_SUCCESS;

    DbObject->RefCount--;

    if (DbObject->RefCount > 0)
        return STATUS_SUCCESS;

    FUNC2(&DbObject->KeyHandle);
    FUNC2(&DbObject->MembersKeyHandle);

    if (DbObject->Name != NULL)
        FUNC0(FUNC1(), 0, DbObject->Name);

    FUNC0(FUNC1(), 0, DbObject);

    return Status;
}