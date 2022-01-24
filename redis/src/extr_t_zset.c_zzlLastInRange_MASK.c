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
 unsigned char* FUNC1 (unsigned char*,int) ; 
 unsigned char* FUNC2 (unsigned char*,unsigned char*) ; 
 unsigned char* FUNC3 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC4 (double,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (double,int /*<<< orphan*/ *) ; 
 double FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ *) ; 

unsigned char *FUNC8(unsigned char *zl, zrangespec *range) {
    unsigned char *eptr = FUNC1(zl,-2), *sptr;
    double score;

    /* If everything is out of range, return early. */
    if (!FUNC7(zl,range)) return NULL;

    while (eptr != NULL) {
        sptr = FUNC2(zl,eptr);
        FUNC0(sptr != NULL);

        score = FUNC6(sptr);
        if (FUNC5(score,range)) {
            /* Check if score >= min. */
            if (FUNC4(score,range))
                return eptr;
            return NULL;
        }

        /* Move to previous element by moving to the score of previous element.
         * When this returns NULL, we know there also is no element. */
        sptr = FUNC3(zl,eptr);
        if (sptr != NULL)
            FUNC0((eptr = FUNC3(zl,sptr)) != NULL);
        else
            eptr = NULL;
    }

    return NULL;
}