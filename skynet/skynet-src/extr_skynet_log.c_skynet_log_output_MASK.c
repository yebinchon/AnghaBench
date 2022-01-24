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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PTYPE_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void 
FUNC5(FILE *f, uint32_t source, int type, int session, void * buffer, size_t sz) {
	if (type == PTYPE_SOCKET) {
		FUNC3(f, buffer, sz);
	} else {
		uint32_t ti = (uint32_t)FUNC4();
		FUNC1(f, ":%08x %d %d %u ", source, type, session, ti);
		FUNC2(f, buffer, sz);
		FUNC1(f,"\n");
		FUNC0(f);
	}
}