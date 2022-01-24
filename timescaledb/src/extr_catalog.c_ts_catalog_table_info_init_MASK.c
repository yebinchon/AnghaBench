#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  schema_name; int /*<<< orphan*/  table_name; } ;
typedef  TYPE_1__ TableInfoDef ;
struct TYPE_8__ {scalar_t__ length; int /*<<< orphan*/ * names; } ;
typedef  TYPE_2__ TableIndexDef ;
struct TYPE_9__ {scalar_t__ serial_relid; int /*<<< orphan*/  schema_name; int /*<<< orphan*/  name; scalar_t__* index_ids; scalar_t__ id; } ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  RangeVar ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__ CatalogTableInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ _MAX_TABLE_INDEXES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

void
FUNC7(CatalogTableInfo *tables_info, int max_tables,
						   const TableInfoDef *table_ary, const TableIndexDef *index_ary,
						   const char **serial_id_ary)
{
	int i;

	for (i = 0; i < max_tables; i++)
	{
		Oid schema_oid;
		Oid id;
		const char *sequence_name;
		Size number_indexes, j;

		schema_oid = FUNC3(table_ary[i].schema_name, false);
		id = FUNC4(table_ary[i].table_name, schema_oid);

		if (id == InvalidOid)
			FUNC2(ERROR,
				 "OID lookup failed for table \"%s.%s\"",
				 table_ary[i].schema_name,
				 table_ary[i].table_name);

		tables_info[i].id = id;

		number_indexes = index_ary[i].length;
		FUNC0(number_indexes <= _MAX_TABLE_INDEXES);

		for (j = 0; j < number_indexes; j++)
		{
			id = FUNC4(index_ary[i].names[j], schema_oid);

			if (id == InvalidOid)
				FUNC2(ERROR, "OID lookup failed for table index \"%s\"", index_ary[i].names[j]);

			tables_info[i].index_ids[j] = id;
		}

		tables_info[i].name = table_ary[i].table_name;
		tables_info[i].schema_name = table_ary[i].schema_name;
		sequence_name = serial_id_ary[i];

		if (NULL != sequence_name)
		{
			RangeVar *sequence;

			sequence = FUNC5(FUNC6(sequence_name));
			tables_info[i].serial_relid = FUNC1(sequence, NoLock, false);
		}
		else
			tables_info[i].serial_relid = InvalidOid;
	}
}