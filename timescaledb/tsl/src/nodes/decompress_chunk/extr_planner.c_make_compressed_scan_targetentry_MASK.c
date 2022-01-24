#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Var ;
typedef  int /*<<< orphan*/  TargetEntry ;
struct TYPE_14__ {TYPE_1__* compressed_rel; TYPE_6__* ht_rte; TYPE_6__* compressed_rte; TYPE_6__* chunk_rte; int /*<<< orphan*/  hypertable_compression_info; } ;
struct TYPE_13__ {int /*<<< orphan*/  relid; } ;
struct TYPE_12__ {int /*<<< orphan*/  type_oid; } ;
struct TYPE_11__ {int /*<<< orphan*/  varattno_map; TYPE_7__* info; } ;
struct TYPE_10__ {scalar_t__ algo_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  relid; } ;
typedef  TYPE_2__ FormData_hypertable_compression ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_3__ DecompressChunkPath ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CUSTOM_TYPE_COMPRESSED_DATA ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static TargetEntry *
FUNC11(DecompressChunkPath *path, AttrNumber ht_attno, int tle_index)
{
	Var *scan_var;
	char *ht_attname = FUNC1(path->info->ht_rte->relid, ht_attno, false);
	FormData_hypertable_compression *ht_info =
		FUNC4(path->info->hypertable_compression_info, ht_attname);
	AttrNumber scan_varattno = FUNC5(path->info, ht_attno);
	AttrNumber chunk_attno = FUNC2(path->info->chunk_rte->relid, ht_attname);

	FUNC0(!FUNC6(path->info->ht_rte, ht_attno));
	FUNC0(!FUNC6(path->info->chunk_rte, chunk_attno));
	FUNC0(!FUNC6(path->info->compressed_rte, scan_varattno));

	if (ht_info->algo_id == 0)
		scan_var = FUNC9(path->info->compressed_rel->relid,
						   scan_varattno,
						   FUNC3(path->info->ht_rte->relid, ht_attno),
						   -1,
						   0,
						   0);
	else
		scan_var = FUNC9(path->info->compressed_rel->relid,
						   scan_varattno,
						   FUNC10(CUSTOM_TYPE_COMPRESSED_DATA)->type_oid,
						   -1,
						   0,
						   0);
	path->varattno_map = FUNC7(path->varattno_map, chunk_attno);

	return FUNC8((Expr *) scan_var, tle_index, NULL, false);
}