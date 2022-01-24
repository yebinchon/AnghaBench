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
struct snlua {int /*<<< orphan*/  L; scalar_t__ mem_limit; int /*<<< orphan*/  mem_report; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMORY_WARNING_REPORT ; 
 int /*<<< orphan*/  lalloc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct snlua*) ; 
 int /*<<< orphan*/  FUNC1 (struct snlua*,int /*<<< orphan*/ ,int) ; 
 struct snlua* FUNC2 (int) ; 

struct snlua *
FUNC3(void) {
	struct snlua * l = FUNC2(sizeof(*l));
	FUNC1(l,0,sizeof(*l));
	l->mem_report = MEMORY_WARNING_REPORT;
	l->mem_limit = 0;
	l->L = FUNC0(lalloc, l);
	return l;
}