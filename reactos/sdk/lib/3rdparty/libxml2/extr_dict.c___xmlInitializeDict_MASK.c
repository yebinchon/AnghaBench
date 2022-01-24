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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rand_seed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int xmlDictInitialized ; 
 int /*<<< orphan*/ * xmlDictMutex ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(void) {
    if (xmlDictInitialized)
        return(1);

    if ((xmlDictMutex = FUNC3()) == NULL)
        return(0);
    FUNC4(xmlDictMutex);

#ifdef DICT_RANDOMIZATION
#ifdef HAVE_RAND_R
    rand_seed = time(NULL);
    rand_r(& rand_seed);
#else
    srand(time(NULL));
#endif
#endif
    xmlDictInitialized = 1;
    FUNC5(xmlDictMutex);
    return(1);
}