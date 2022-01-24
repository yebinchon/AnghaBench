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
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 

unsigned char *FUNC4(unsigned char *zl, int index) {
    unsigned char *p;
    unsigned int prevlensize, prevlen = 0;
    if (index < 0) {
        index = (-index)-1;
        p = FUNC1(zl);
        if (p[0] != ZIP_END) {
            FUNC2(p, prevlensize, prevlen);
            while (prevlen > 0 && index--) {
                p -= prevlen;
                FUNC2(p, prevlensize, prevlen);
            }
        }
    } else {
        p = FUNC0(zl);
        while (p[0] != ZIP_END && index--) {
            p += FUNC3(p);
        }
    }
    return (p[0] == ZIP_END || index > 0) ? NULL : p;
}