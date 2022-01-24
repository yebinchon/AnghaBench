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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  TABLESPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

__attribute__((used)) static int32
FUNC5(int32 hypertable_id, const char *tspcname)
{
	Catalog *catalog = FUNC4();
	Relation rel;
	int32 id;

	rel = FUNC2(FUNC0(catalog, TABLESPACE), RowExclusiveLock);
	id = FUNC3(rel, hypertable_id, tspcname);
	FUNC1(rel, RowExclusiveLock);

	return id;
}