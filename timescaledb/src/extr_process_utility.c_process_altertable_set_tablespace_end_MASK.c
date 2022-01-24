#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int num_tablespaces; TYPE_2__* tablespaces; } ;
typedef  TYPE_4__ Tablespaces ;
struct TYPE_21__ {int /*<<< orphan*/  name; } ;
struct TYPE_18__ {int /*<<< orphan*/  compressed_hypertable_id; int /*<<< orphan*/  id; } ;
struct TYPE_20__ {int /*<<< orphan*/  main_table_relid; TYPE_3__ fd; } ;
struct TYPE_16__ {int /*<<< orphan*/  tablespace_name; } ;
struct TYPE_17__ {TYPE_1__ fd; int /*<<< orphan*/  tablespace_oid; } ;
typedef  int /*<<< orphan*/  NameData ;
typedef  TYPE_5__ Hypertable ;
typedef  TYPE_6__ AlterTableCmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  process_altertable_chunk ; 
 TYPE_5__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(Hypertable *ht, AlterTableCmd *cmd)
{
	NameData tspc_name;
	Tablespaces *tspcs;

	FUNC11(&tspc_name, cmd->name);

	tspcs = FUNC16(ht->fd.id);

	if (tspcs->num_tablespaces > 1)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC7("cannot set new tablespace when multiple tablespaces are attached to "
						"hypertable \"%s\"",
						FUNC9(ht->main_table_relid)),
				 FUNC6("Detach tablespaces before altering the hypertable.")));

	if (tspcs->num_tablespaces == 1)
	{
		FUNC1(FUNC13(ht, tspcs->tablespaces[0].tablespace_oid));
		FUNC15(ht->fd.id, FUNC2(tspcs->tablespaces[0].fd.tablespace_name));
	}

	FUNC14(&tspc_name, ht->main_table_relid, true);
	FUNC8(ht, process_altertable_chunk, cmd);
	if (FUNC3(ht))
	{
		Hypertable *compressed_hypertable =
			FUNC12(ht->fd.compressed_hypertable_id);
		FUNC0(compressed_hypertable->main_table_relid, FUNC10(cmd), false);
		FUNC17(compressed_hypertable, cmd);
	}
}