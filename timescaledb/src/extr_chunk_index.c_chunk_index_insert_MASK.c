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
 int /*<<< orphan*/  CHUNK_INDEX ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

__attribute__((used)) static bool
FUNC5(int32 chunk_id, const char *chunk_index, int32 hypertable_id,
				   const char *hypertable_index)
{
	Catalog *catalog = FUNC4();
	Relation rel;
	bool result;

	rel = FUNC3(FUNC0(catalog, CHUNK_INDEX), RowExclusiveLock);
	result =
		FUNC1(rel, chunk_id, chunk_index, hypertable_id, hypertable_index);
	FUNC2(rel, RowExclusiveLock);

	return result;
}