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
 unsigned char* FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 double FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (unsigned char*,unsigned char*,scalar_t__,double) ; 

unsigned char *FUNC7(unsigned char *zl, sds ele, double score) {
    unsigned char *eptr = FUNC2(zl,0), *sptr;
    double s;

    while (eptr != NULL) {
        sptr = FUNC3(zl,eptr);
        FUNC1(sptr != NULL);
        s = FUNC5(sptr);

        if (s > score) {
            /* First element with score larger than score for element to be
             * inserted. This means we should take its spot in the list to
             * maintain ordering. */
            zl = FUNC6(zl,eptr,ele,score);
            break;
        } else if (s == score) {
            /* Ensure lexicographical ordering for elements. */
            if (FUNC4(eptr,(unsigned char*)ele,FUNC0(ele)) > 0) {
                zl = FUNC6(zl,eptr,ele,score);
                break;
            }
        }

        /* Move to next element. */
        eptr = FUNC3(zl,sptr);
    }

    /* Push on tail of list when it was not yet inserted. */
    if (eptr == NULL)
        zl = FUNC6(zl,NULL,ele,score);
    return zl;
}