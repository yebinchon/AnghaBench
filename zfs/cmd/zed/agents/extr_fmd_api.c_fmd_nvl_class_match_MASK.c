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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  fmd_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FM_CLASS ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 

int
FUNC2(fmd_hdl_t *hdl, nvlist_t *nvl, const char *pattern)
{
	char *class;

	return (nvl != NULL &&
	    FUNC1(nvl, FM_CLASS, &class) == 0 &&
	    FUNC0(class, pattern));
}