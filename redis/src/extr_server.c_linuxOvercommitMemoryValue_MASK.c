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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 

int FUNC4(void) {
    FILE *fp = FUNC3("/proc/sys/vm/overcommit_memory","r");
    char buf[64];

    if (!fp) return -1;
    if (FUNC2(buf,64,fp) == NULL) {
        FUNC1(fp);
        return -1;
    }
    FUNC1(fp);

    return FUNC0(buf);
}