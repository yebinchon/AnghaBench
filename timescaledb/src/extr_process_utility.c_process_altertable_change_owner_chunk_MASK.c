#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  newowner; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  TYPE_1__ AlterTableCmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(Hypertable *ht, Oid chunk_relid, void *arg)
{
	AlterTableCmd *cmd = arg;
	Oid roleid = FUNC1(cmd->newowner, false);

	FUNC0(chunk_relid, roleid, false, AccessExclusiveLock);
}