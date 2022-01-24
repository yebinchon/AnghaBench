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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 unsigned long* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,size_t,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(size_t megabytes, int passes) {
    size_t bytes = megabytes*1024*1024;
    unsigned long *m = FUNC3(bytes);

    if (m == NULL) {
        FUNC1(stderr,"Unable to allocate %zu megabytes: %d",
            megabytes, FUNC5(errno));
        FUNC0(1);
    }
    FUNC4(m,bytes,passes,1);
    FUNC2(m);
}