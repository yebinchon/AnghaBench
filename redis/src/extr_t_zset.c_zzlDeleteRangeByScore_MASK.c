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
 unsigned char* FUNC0 (unsigned char*,unsigned char**) ; 
 unsigned char* FUNC1 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC2 (double,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC3 (unsigned char*,int /*<<< orphan*/ *) ; 
 double FUNC4 (unsigned char*) ; 

unsigned char *FUNC5(unsigned char *zl, zrangespec *range, unsigned long *deleted) {
    unsigned char *eptr, *sptr;
    double score;
    unsigned long num = 0;

    if (deleted != NULL) *deleted = 0;

    eptr = FUNC3(zl,range);
    if (eptr == NULL) return zl;

    /* When the tail of the ziplist is deleted, eptr will point to the sentinel
     * byte and ziplistNext will return NULL. */
    while ((sptr = FUNC1(zl,eptr)) != NULL) {
        score = FUNC4(sptr);
        if (FUNC2(score,range)) {
            /* Delete both the element and the score. */
            zl = FUNC0(zl,&eptr);
            zl = FUNC0(zl,&eptr);
            num++;
        } else {
            /* No longer in range. */
            break;
        }
    }

    if (deleted != NULL) *deleted = num;
    return zl;
}