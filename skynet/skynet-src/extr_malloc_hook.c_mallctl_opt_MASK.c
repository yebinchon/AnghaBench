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
typedef  int /*<<< orphan*/  v ;

/* Variables and functions */
 int FUNC0 (char const*,int*,size_t*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char const*,...) ; 

int
FUNC2(const char* name, int* newval) {
	int v = 0;
	size_t len = sizeof(v);
	if(newval) {
		int ret = FUNC0(name, &v, &len, newval, sizeof(int));
		if(ret == 0) {
			FUNC1(NULL, "set new value(%d) for (%s) succeed\n", *newval, name);
		} else {
			FUNC1(NULL, "set new value(%d) for (%s) failed: error -> %d\n", *newval, name, ret);
		}
	} else {
		FUNC0(name, &v, &len, NULL, 0);
	}

	return v;
}