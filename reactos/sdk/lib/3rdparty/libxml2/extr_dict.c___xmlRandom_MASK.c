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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rand_seed ; 
 scalar_t__ xmlDictInitialized ; 
 int /*<<< orphan*/  xmlDictMutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(void) {
    int ret;

    if (xmlDictInitialized == 0)
        FUNC0();

    FUNC3(xmlDictMutex);
#ifdef HAVE_RAND_R
    ret = rand_r(& rand_seed);
#else
    ret = FUNC1();
#endif
    FUNC4(xmlDictMutex);
    return(ret);
}