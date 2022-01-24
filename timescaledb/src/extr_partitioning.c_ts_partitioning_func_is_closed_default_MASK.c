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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEFAULT_PARTITIONING_FUNC_NAME ; 
 int /*<<< orphan*/  DEFAULT_PARTITIONING_FUNC_SCHEMA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static bool
FUNC2(const char *schema, const char *funcname)
{
	FUNC0(schema != NULL && funcname != NULL);

	return FUNC1(DEFAULT_PARTITIONING_FUNC_SCHEMA, schema) == 0 &&
		   FUNC1(DEFAULT_PARTITIONING_FUNC_NAME, funcname) == 0;
}