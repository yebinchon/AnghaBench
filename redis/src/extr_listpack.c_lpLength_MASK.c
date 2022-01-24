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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ LP_HDR_NUMELE_UNKNOWN ; 
 unsigned char* FUNC0 (unsigned char*) ; 
 scalar_t__ FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,scalar_t__) ; 

uint32_t FUNC4(unsigned char *lp) {
    uint32_t numele = FUNC1(lp);
    if (numele != LP_HDR_NUMELE_UNKNOWN) return numele;

    /* Too many elements inside the listpack. We need to scan in order
     * to get the total number. */
    uint32_t count = 0;
    unsigned char *p = FUNC0(lp);
    while(p) {
        count++;
        p = FUNC2(lp,p);
    }

    /* If the count is again within range of the header numele field,
     * set it. */
    if (count < LP_HDR_NUMELE_UNKNOWN) FUNC3(lp,count);
    return count;
}