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
typedef  int /*<<< orphan*/  ev_opts_t ;

/* Variables and functions */
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC3(ev_opts_t *opts)
{
	int count, ret;

	ret = FUNC2(g_zfs, &count);
	if (!ret)
		(void) FUNC1(FUNC0("cleared %d events\n"), count);

	return (ret);
}