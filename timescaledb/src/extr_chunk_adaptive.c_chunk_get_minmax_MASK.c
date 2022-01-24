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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  NameData ;
typedef  scalar_t__ MinMaxResult ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 scalar_t__ MINMAX_FOUND ; 
 scalar_t__ MINMAX_NO_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC11(Oid relid, Oid atttype, AttrNumber attnum, Datum minmax[2])
{
	Relation rel = FUNC7(relid, AccessShareLock);
	NameData attname;
	MinMaxResult res;

	FUNC9(&attname, FUNC4(relid, attnum, false));
	res = FUNC10(rel, atttype, &attname, attnum, minmax);

	if (res == MINMAX_NO_INDEX)
	{
		FUNC1(WARNING,
				(FUNC3("no index on \"%s\" found for adaptive chunking on chunk \"%s\"",
						FUNC0(attname),
						FUNC5(relid)),
				 FUNC2("Adaptive chunking works best with an index on the dimension being "
						   "adapted.")));

		res = FUNC8(rel, atttype, attnum, minmax);
	}

	FUNC6(rel, AccessShareLock);

	return res == MINMAX_FOUND;
}