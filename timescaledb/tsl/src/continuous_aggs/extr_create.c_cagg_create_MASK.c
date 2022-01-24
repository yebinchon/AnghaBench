#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_32__ {int is_default; int /*<<< orphan*/  parsed; } ;
typedef  TYPE_1__ WithClauseResult ;
struct TYPE_33__ {TYPE_3__* view; int /*<<< orphan*/ * options; int /*<<< orphan*/  aliases; } ;
typedef  TYPE_2__ ViewStmt ;
struct TYPE_37__ {int htid; int /*<<< orphan*/  htoid; int /*<<< orphan*/  bucket_width; int /*<<< orphan*/  htpartcoltype; } ;
struct TYPE_36__ {int /*<<< orphan*/  matcollist; } ;
struct TYPE_35__ {int /*<<< orphan*/  rtable; struct TYPE_35__* groupClause; } ;
struct TYPE_34__ {int /*<<< orphan*/  relname; int /*<<< orphan*/  schemaname; } ;
typedef  TYPE_3__ RangeVar ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  TYPE_4__ Query ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_5__ MatTableColumnInfo ;
typedef  int /*<<< orphan*/  Interval ;
typedef  int /*<<< orphan*/  FinalizeQueryInfo ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;
typedef  TYPE_6__ CAggTimebucketInfo ;

/* Variables and functions */
 size_t ContinuousViewOptionCreateGroupIndex ; 
 size_t ContinuousViewOptionRefreshInterval ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HYPERTABLE ; 
 char* INTERNAL_SCHEMA_NAME ; 
 int NAMEDATALEN ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_6__*,int,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC20 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int FUNC23 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC30(ViewStmt *stmt, Query *panquery, CAggTimebucketInfo *origquery_ht,
			WithClauseResult *with_clause_options)
{
	ObjectAddress mataddress;
	char relnamebuf[NAMEDATALEN];
	MatTableColumnInfo mattblinfo;
	FinalizeQueryInfo finalqinfo;
	CatalogSecurityContext sec_ctx;
	bool is_create_mattbl_index;

	Query *final_selquery;
	Query *partial_selquery;	/* query to populate the mattable*/
	Query *orig_userview_query; /* copy of the original user query for dummy view */
	RangeTblEntry *usertbl_rte;
	Oid nspid;
	RangeVar *part_rel = NULL, *mat_rel = NULL, *dum_rel = NULL;
	int32 materialize_hypertable_id;
	int32 job_id;
	char trigarg[NAMEDATALEN];
	int ret;
	Interval *refresh_interval =
		FUNC0(with_clause_options[ContinuousViewOptionRefreshInterval].parsed);
	int64 refresh_lag = FUNC15(origquery_ht->htpartcoltype,
										origquery_ht->bucket_width,
										with_clause_options);
	int64 max_interval_per_job = FUNC13(origquery_ht->htpartcoltype,
														  with_clause_options,
														  origquery_ht->bucket_width);

	/* assign the column_name aliases in CREATE VIEW to the query. No other modifications to
	 * panquery */
	FUNC12(panquery, stmt->aliases);
	FUNC21(&mattblinfo, NIL, NIL, FUNC4(panquery->groupClause));
	FUNC11(&finalqinfo, panquery, &mattblinfo);

	/* invalidate all options on the stmt before using it
	 * The options are valid only for internal use (ts_continuous)
	 */
	stmt->options = NULL;

	/* Step 0: add any internal columns needed for materialization based
		on the user query's table
	*/
	usertbl_rte = FUNC16(panquery->rtable, 0);
	FUNC18(&mattblinfo, usertbl_rte, origquery_ht->htid);

	/* Step 1: create the materialization table */
	FUNC24(FUNC25(), &sec_ctx);
	materialize_hypertable_id = FUNC28(FUNC26(), HYPERTABLE);
	FUNC27(&sec_ctx);
	FUNC1(relnamebuf, "_materialized_hypertable_%d", materialize_hypertable_id);
	mat_rel = FUNC17(FUNC22(INTERNAL_SCHEMA_NAME), FUNC22(relnamebuf), -1);
	is_create_mattbl_index = with_clause_options[ContinuousViewOptionCreateGroupIndex].is_default;
	FUNC19(&mattblinfo,
													materialize_hypertable_id,
													mat_rel,
													origquery_ht,
													is_create_mattbl_index,
													&mataddress);
	/* Step 2: create view with select finalize from materialization
	 * table
	 */
	final_selquery =
		FUNC10(&finalqinfo, mattblinfo.matcollist, &mataddress);
	FUNC6(final_selquery, stmt->view);

	/* Step 3: create the internal view with select partialize(..)
	 */
	partial_selquery = FUNC20(&mattblinfo, panquery);

	FUNC1(relnamebuf, "_partial_view_%d", materialize_hypertable_id);
	part_rel = FUNC17(FUNC22(INTERNAL_SCHEMA_NAME), FUNC22(relnamebuf), -1);
	FUNC6(partial_selquery, part_rel);

	/* Additional miscellaneous steps */
	/* create a dummy view to store the user supplied view query. This is to get PG
	 * to display the view correctly without having to replicate the PG source code for make_viewdef
	 */
	orig_userview_query = FUNC4(panquery);
	FUNC1(relnamebuf, "_direct_view_%d", materialize_hypertable_id);
	dum_rel = FUNC17(FUNC22(INTERNAL_SCHEMA_NAME), FUNC22(relnamebuf), -1);
	FUNC6(orig_userview_query, dum_rel);

	/* register the BGW job to process continuous aggs*/
	job_id =
		FUNC29(origquery_ht->htid, origquery_ht->bucket_width, refresh_interval);

	/* Step 4 add catalog table entry for the objects we just created */
	nspid = FUNC2(stmt->view);
	FUNC5(materialize_hypertable_id,
							 origquery_ht->htid,
							 FUNC14(nspid), /*schema name for user view */
							 stmt->view->relname,
							 part_rel->schemaname,
							 part_rel->relname,
							 origquery_ht->bucket_width,
							 refresh_lag,
							 max_interval_per_job,
							 job_id,
							 dum_rel->schemaname,
							 dum_rel->relname);

	/* Step 5 create trigger on raw hypertable -specified in the user view query*/
	ret = FUNC23(trigarg, NAMEDATALEN, "%d", origquery_ht->htid);
	if (ret < 0 || ret >= NAMEDATALEN)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_INTERNAL_ERROR),
				 FUNC9("bad argument to continuous aggregate trigger")));
	FUNC3(origquery_ht->htoid, trigarg);

	return;
}