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
typedef  scalar_t__ sds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (unsigned char*,unsigned char*) ; 
 double FUNC5 (unsigned char*) ; 

unsigned char *FUNC6(unsigned char *zl, sds ele, double *score) {
    unsigned char *eptr = FUNC3(zl,0), *sptr;

    while (eptr != NULL) {
        sptr = FUNC4(zl,eptr);
        FUNC1(sptr != NULL);

        if (FUNC2(eptr,(unsigned char*)ele,FUNC0(ele))) {
            /* Matching element, pull out score. */
            if (score != NULL) *score = FUNC5(sptr);
            return eptr;
        }

        /* Move to next element. */
        eptr = FUNC4(zl,sptr);
    }
    return NULL;
}