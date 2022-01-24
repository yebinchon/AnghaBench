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
typedef  int /*<<< orphan*/  oidvector ;
struct TYPE_9__ {TYPE_2__* funcinfo; int /*<<< orphan*/  funcid; } ;
struct TYPE_8__ {int /*<<< orphan*/  nargs; int /*<<< orphan*/ * funcname; int /*<<< orphan*/  arg_types; scalar_t__ is_timescaledb_func; } ;
struct TYPE_7__ {int keysize; int entrysize; int /*<<< orphan*/  hcxt; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__ HASHCTL ;
typedef  TYPE_2__ FuncInfo ;
typedef  TYPE_3__ FuncEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCNAMEARGSNSP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int _MAX_CACHE_FUNCTIONS ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  func_hash ; 
 TYPE_2__* funcinfo ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,TYPE_1__*,int) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC14 () ; 

__attribute__((used)) static void
FUNC15()
{
	HASHCTL hashctl = {
		.keysize = sizeof(Oid),
		.entrysize = sizeof(FuncEntry),
		.hcxt = CacheMemoryContext,
	};
	Oid extension_nsp = FUNC9(FUNC14(), false);
	Oid pg_nsp = FUNC9("pg_catalog", false);
	HeapTuple tuple;
	Relation rel;
	int i;

	func_hash = FUNC10("func_cache", _MAX_CACHE_FUNCTIONS, &hashctl, HASH_ELEM | HASH_BLOBS);

	rel = FUNC13(ProcedureRelationId, AccessShareLock);

	for (i = 0; i < _MAX_CACHE_FUNCTIONS; i++)
	{
		FuncInfo *finfo = &funcinfo[i];
		Oid namespaceoid = finfo->is_timescaledb_func ? extension_nsp : pg_nsp;
		oidvector *paramtypes = FUNC7(finfo->arg_types, finfo->nargs);
		FuncEntry *fentry;
		bool hash_found;
		Oid funcid;

		tuple = FUNC6(PROCNAMEARGSNSP,
								FUNC4(finfo->funcname),
								FUNC4(paramtypes),
								FUNC3(namespaceoid));

		if (!FUNC2(tuple))
			FUNC8(ERROR,
				 "cache lookup failed for function \"%s\" with %d args",
				 finfo->funcname,
				 finfo->nargs);

		funcid = FUNC1(tuple);

		fentry = FUNC11(func_hash, &funcid, HASH_ENTER, &hash_found);
		FUNC0(!hash_found);
		fentry->funcid = funcid;
		fentry->funcinfo = finfo;
		FUNC5(tuple);
	}

	FUNC12(rel, AccessShareLock);
}