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
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CHUNK_EXCL_FUNC_NAME ; 
 int /*<<< orphan*/  INTERNAL_SCHEMA_NAME ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ chunk_exclusion_func ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ts_chunks_arg_types ; 

__attribute__((used)) static void
FUNC5()
{
	if (chunk_exclusion_func == InvalidOid)
	{
		List *l = FUNC3(FUNC4(INTERNAL_SCHEMA_NAME), FUNC4(CHUNK_EXCL_FUNC_NAME));
		chunk_exclusion_func =
			FUNC1(l, FUNC2(ts_chunks_arg_types), ts_chunks_arg_types, false);
	}
	FUNC0(chunk_exclusion_func != InvalidOid);
}