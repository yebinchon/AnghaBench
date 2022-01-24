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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_extension_extname ; 
 int /*<<< orphan*/  Anum_pg_extension_extowner ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EXTENSION_NAME ; 
 int /*<<< orphan*/  ExtensionNameIndexId ; 
 int /*<<< orphan*/  ExtensionRelationId ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namein ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC13(void)
{
	Datum result;
	Relation rel;
	SysScanDesc scandesc;
	HeapTuple tuple;
	ScanKeyData entry[1];
	bool is_null = true;
	Oid extension_owner = InvalidOid;

	rel = FUNC9(ExtensionRelationId, AccessShareLock);

	FUNC5(&entry[0],
				Anum_pg_extension_extname,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC1(namein, FUNC0(EXTENSION_NAME)));

	scandesc = FUNC10(rel, ExtensionNameIndexId, true, NULL, 1, entry);

	tuple = FUNC12(scandesc);

	/* We assume that there can be at most one matching tuple */
	if (FUNC2(tuple))
	{
		result = FUNC8(tuple, Anum_pg_extension_extowner, FUNC4(rel), &is_null);

		if (!is_null)
			extension_owner = FUNC3(result);
	}

	FUNC11(scandesc);
	FUNC7(rel, AccessShareLock);

	if (extension_owner == InvalidOid)
		FUNC6(ERROR, "extension not found while getting owner");

	return extension_owner;
}