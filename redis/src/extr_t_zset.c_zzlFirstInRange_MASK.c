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
typedef  int /*<<< orphan*/  zrangespec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC2 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC3 (double,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (double,int /*<<< orphan*/ *) ; 
 double FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ *) ; 

unsigned char *FUNC7(unsigned char *zl, zrangespec *range) {
    unsigned char *eptr = FUNC1(zl,0), *sptr;
    double score;

    /* If everything is out of range, return early. */
    if (!FUNC6(zl,range)) return NULL;

    while (eptr != NULL) {
        sptr = FUNC2(zl,eptr);
        FUNC0(sptr != NULL);

        score = FUNC5(sptr);
        if (FUNC3(score,range)) {
            /* Check if score <= max. */
            if (FUNC4(score,range))
                return eptr;
            return NULL;
        }

        /* Move to next element. */
        eptr = FUNC2(zl,sptr);
    }

    return NULL;
}