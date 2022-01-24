#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Var ;
struct TYPE_8__ {scalar_t__ hash_proc; } ;
typedef  TYPE_1__ TypeCacheEntry ;
struct TYPE_11__ {int /*<<< orphan*/  fn_oid; } ;
struct TYPE_10__ {TYPE_7__ func_fmgr; int /*<<< orphan*/  rettype; int /*<<< orphan*/  schema; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {scalar_t__ column_attnum; TYPE_4__ partfunc; int /*<<< orphan*/  dimtype; int /*<<< orphan*/  column; } ;
typedef  TYPE_2__ PartitioningInfo ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  FuncExpr ;
typedef  int /*<<< orphan*/  DimensionType ;

/* Variables and functions */
 int /*<<< orphan*/  COERCE_EXPLICIT_CALL ; 
 int /*<<< orphan*/  DIMENSION_TYPE_CLOSED ; 
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidAttrNumber ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPECACHE_HASH_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int,scalar_t__,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char const*,char const*) ; 

PartitioningInfo *
FUNC17(const char *schema, const char *partfunc, const char *partcol,
							DimensionType dimtype, Oid relid)
{
	PartitioningInfo *pinfo;
	Oid columntype, varcollid, funccollid = InvalidOid;
	Var *var;
	FuncExpr *expr;

	if (schema == NULL || partfunc == NULL || partcol == NULL)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_NULL_VALUE_NOT_ALLOWED),
				 FUNC4("partitioning function information cannot be null")));

	pinfo = FUNC14(sizeof(PartitioningInfo));
	FUNC0(pinfo->partfunc.name, partfunc, NAMEDATALEN);
	FUNC0(pinfo->column, partcol, NAMEDATALEN);
	pinfo->column_attnum = FUNC7(relid, pinfo->column);
	pinfo->dimtype = dimtype;

	/* handle the case that the attribute has been dropped */
	if (pinfo->column_attnum == InvalidAttrNumber)
		return NULL;

	FUNC0(pinfo->partfunc.schema, schema, NAMEDATALEN);

	/* Lookup the type cache entry to access the hash function for the type */
	columntype = FUNC8(relid, pinfo->column_attnum);

	if (dimtype == DIMENSION_TYPE_CLOSED)
	{
		TypeCacheEntry *tce = FUNC11(columntype, TYPECACHE_HASH_FLAGS);

		if (tce->hash_proc == InvalidOid &&
			FUNC16(schema, partfunc))
			FUNC1(ERROR, "could not find hash function for type %s", FUNC6(columntype));
	}

	FUNC15(&pinfo->partfunc, columntype, dimtype);

	/*
	 * Prepare a function expression for this function. The partition hash
	 * function needs this to be able to resolve the type of the value to be
	 * hashed.
	 */
	varcollid = FUNC9(columntype);

	var = FUNC13(1, pinfo->column_attnum, columntype, -1, varcollid, 0);

	expr = FUNC12(pinfo->partfunc.func_fmgr.fn_oid,
						pinfo->partfunc.rettype,
						FUNC10(var),
						funccollid,
						varcollid,
						COERCE_EXPLICIT_CALL);

	FUNC5((Node *) expr, &pinfo->partfunc.func_fmgr);

	return pinfo;
}