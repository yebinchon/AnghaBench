#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; } ;
struct TYPE_8__ {int /*<<< orphan*/  main_table_relid; TYPE_1__ fd; } ;
struct TYPE_7__ {int /*<<< orphan*/ * indexParams; int /*<<< orphan*/  tableSpace; int /*<<< orphan*/  relation; int /*<<< orphan*/ * idxname; int /*<<< orphan*/  accessMethod; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ IndexStmt ;
typedef  TYPE_3__ Hypertable ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_INDEX_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_IndexStmt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(Hypertable *ht, List *indexelems)
{
	IndexStmt stmt = {
		.type = T_IndexStmt,
		.accessMethod = DEFAULT_INDEX_TYPE,
		.idxname = NULL,
		.relation = FUNC4(FUNC1(ht->fd.schema_name), FUNC1(ht->fd.table_name), 0),
		.tableSpace = FUNC3(FUNC2(ht->main_table_relid)),
		.indexParams = indexelems,
	};

	FUNC0(ht->main_table_relid,
					  &stmt,
					  InvalidOid,
					  false, /* is alter table */
					  false, /* check rights */
					  false, /* skip_build */
					  true); /* quiet */
}