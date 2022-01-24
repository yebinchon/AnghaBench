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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  idx_tree ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(uint64_t id, const char *id_type)
{
	if (FUNC0(id)) {
		char *domain;

		domain = FUNC3(&idx_tree, FUNC0(id));
		(void) FUNC2("\t%s     %llx [%s-%d]\n", id_type,
		    (u_longlong_t)id, domain, (int)FUNC1(id));
	} else {
		(void) FUNC2("\t%s     %llu\n", id_type, (u_longlong_t)id);
	}

}