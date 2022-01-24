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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_TYPE_BGW_JOB ; 
 int /*<<< orphan*/  CACHE_TYPE_HYPERTABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(Datum arg, Oid relid)
{
	Catalog *catalog;

	if (FUNC4(relid))
	{
		FUNC0();
		return;
	}

	if (!FUNC5())
		return;

	catalog = FUNC2();

	if (relid == FUNC3(catalog, CACHE_TYPE_HYPERTABLE))
		FUNC6();

	if (relid == FUNC3(catalog, CACHE_TYPE_BGW_JOB))
		FUNC1();
}