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
typedef  int /*<<< orphan*/  thread_name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int) ; 

__attribute__((used)) static void
FUNC3(const char *thread_name, const char *func,
    int line) {
	FUNC0(FUNC1("thread.prof.name", NULL, NULL,
	    (void *)&thread_name, sizeof(thread_name)), 0,
	    "%s():%d: Unexpected mallctl failure reading thread.prof.name",
	    func, line);
	FUNC2(thread_name, func, line);
}