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
typedef  long uint32_t ;

/* Variables and functions */
 long LP_HDR_NUMELE_UNKNOWN ; 
 unsigned char* FUNC0 (unsigned char*) ; 
 long FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (unsigned char*,unsigned char*) ; 
 unsigned char* FUNC4 (unsigned char*,unsigned char*) ; 

unsigned char *FUNC5(unsigned char *lp, long index) {
    int forward = 1; /* Seek forward by default. */

    /* We want to seek from left to right or the other way around
     * depending on the listpack length and the element position.
     * However if the listpack length cannot be obtained in constant time,
     * we always seek from left to right. */
    uint32_t numele = FUNC1(lp);
    if (numele != LP_HDR_NUMELE_UNKNOWN) {
        if (index < 0) index = (long)numele+index;
        if (index < 0) return NULL; /* Index still < 0 means out of range. */
        if (index >= numele) return NULL; /* Out of range the other side. */
        /* We want to scan right-to-left if the element we are looking for
         * is past the half of the listpack. */
        if (index > numele/2) {
            forward = 0;
            /* Left to right scanning always expects a negative index. Convert
             * our index to negative form. */
            index -= numele;
        }
    } else {
        /* If the listpack length is unspecified, for negative indexes we
         * want to always scan left-to-right. */
        if (index < 0) forward = 0;
    }

    /* Forward and backward scanning is trivially based on lpNext()/lpPrev(). */
    if (forward) {
        unsigned char *ele = FUNC0(lp);
        while (index > 0 && ele) {
            ele = FUNC3(lp,ele);
            index--;
        }
        return ele;
    } else {
        unsigned char *ele = FUNC2(lp);
        while (index < -1 && ele) {
            ele = FUNC4(lp,ele);
            index++;
        }
        return ele;
    }
}