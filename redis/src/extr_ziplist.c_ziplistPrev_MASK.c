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
 unsigned char* FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned int,unsigned int) ; 
 unsigned char ZIP_END ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

unsigned char *FUNC4(unsigned char *zl, unsigned char *p) {
    unsigned int prevlensize, prevlen = 0;

    /* Iterating backwards from ZIP_END should return the tail. When "p" is
     * equal to the first element of the list, we're already at the head,
     * and should return NULL. */
    if (p[0] == ZIP_END) {
        p = FUNC1(zl);
        return (p[0] == ZIP_END) ? NULL : p;
    } else if (p == FUNC0(zl)) {
        return NULL;
    } else {
        FUNC2(p, prevlensize, prevlen);
        FUNC3(prevlen > 0);
        return p-prevlen;
    }
}