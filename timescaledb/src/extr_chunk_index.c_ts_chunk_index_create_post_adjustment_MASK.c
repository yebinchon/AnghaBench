#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  values; } ;
typedef  TYPE_3__ oidvector ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  bits16 ;
struct TYPE_15__ {int /*<<< orphan*/  rd_indoption; int /*<<< orphan*/  rd_indcollation; TYPE_2__* rd_rel; TYPE_1__* rd_index; int /*<<< orphan*/  rd_indextuple; } ;
struct TYPE_13__ {int /*<<< orphan*/  relam; } ;
struct TYPE_12__ {scalar_t__ indisprimary; } ;
typedef  TYPE_4__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  IndexInfo ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_class_reloptions ; 
 int /*<<< orphan*/  Anum_pg_index_indclass ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int /*<<< orphan*/  INDEX_CREATE_ADD_CONSTRAINT ; 
 int /*<<< orphan*/  INDEX_CREATE_IS_PRIMARY ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*) ; 

__attribute__((used)) static Oid
FUNC16(int32 hypertable_id, Relation template_indexrel,
									  Relation chunkrel, IndexInfo *indexinfo, bool isconstraint,
									  Oid index_tablespace)
{
	Oid chunk_indexrelid = InvalidOid;
	const char *indexname;
	HeapTuple tuple;
	bool isnull;
	Datum reloptions;
	Datum indclass;
	oidvector *indclassoid;
	List *colnames = FUNC10(template_indexrel);
	Oid tablespace;
	bits16 flags = 0;

	tuple = FUNC7(RELOID, FUNC3(FUNC5(template_indexrel)));

	if (!FUNC2(tuple))
		FUNC11(ERROR,
			 "cache lookup failed for index relation %u",
			 FUNC5(template_indexrel));

	reloptions = FUNC8(RELOID, tuple, Anum_pg_class_reloptions, &isnull);

	indclass = FUNC8(INDEXRELID,
							   template_indexrel->rd_indextuple,
							   Anum_pg_index_indclass,
							   &isnull);
	FUNC0(!isnull);
	indclassoid = (oidvector *) FUNC1(indclass);

	indexname = FUNC9(FUNC12(FUNC5(chunkrel)),
										FUNC12(FUNC5(template_indexrel)),
										FUNC13(FUNC5(chunkrel)));
	if (FUNC4(index_tablespace))
		tablespace = index_tablespace;
	else
		tablespace = FUNC15(hypertable_id, template_indexrel, chunkrel);

	/* assign flags for index creation and constraint creation */
	if (isconstraint)
		flags |= INDEX_CREATE_ADD_CONSTRAINT;
	if (template_indexrel->rd_index->indisprimary)
		flags |= INDEX_CREATE_IS_PRIMARY;

	chunk_indexrelid = FUNC14(chunkrel,
										   indexname,
										   InvalidOid,
										   InvalidOid,
										   indexinfo,
										   colnames,
										   template_indexrel->rd_rel->relam,
										   tablespace,
										   template_indexrel->rd_indcollation,
										   indclassoid->values,
										   template_indexrel->rd_indoption,
										   reloptions,
										   flags,
										   0,	  /* constr_flags constant and 0
													* for now */
										   false,  /* allow system table mods */
										   false); /* is internal */

	FUNC6(tuple);

	return chunk_indexrelid;
}