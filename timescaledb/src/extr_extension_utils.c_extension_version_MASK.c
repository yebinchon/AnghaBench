#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_extension_extname ; 
 int /*<<< orphan*/  Anum_pg_extension_extversion ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EXTENSION_NAME ; 
 int /*<<< orphan*/  ExtensionNameIndexId ; 
 int /*<<< orphan*/  ExtensionRelationId ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namein ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC14(void)
{
	Datum result;
	Relation rel;
	SysScanDesc scandesc;
	HeapTuple tuple;
	ScanKeyData entry[1];
	bool is_null = true;
	char *sql_version = NULL;

	rel = FUNC9(ExtensionRelationId, AccessShareLock);

	FUNC4(&entry[0],
				Anum_pg_extension_extname,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC1(namein, FUNC0(EXTENSION_NAME)));

	scandesc = FUNC11(rel, ExtensionNameIndexId, true, NULL, 1, entry);

	tuple = FUNC13(scandesc);

	/* We assume that there can be at most one matching tuple */
	if (FUNC2(tuple))
	{
		result = FUNC8(tuple, Anum_pg_extension_extversion, FUNC3(rel), &is_null);

		if (!is_null)
		{
			sql_version = FUNC10(FUNC5(result));
		}
	}

	FUNC12(scandesc);
	FUNC7(rel, AccessShareLock);

	if (sql_version == NULL)
	{
		FUNC6(ERROR, "extension not found while getting version");
	}
	return sql_version;
}