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
typedef  int /*<<< orphan*/  quicklist ;
typedef  int /*<<< orphan*/  longstr ;

/* Variables and functions */
 unsigned int FUNC0 (char*,int,long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char*,unsigned char**,unsigned int*,long long*) ; 
 unsigned char* FUNC4 (unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC5 (unsigned char*,unsigned char*) ; 

quicklist *FUNC6(quicklist *quicklist,
                                            unsigned char *zl) {
    unsigned char *value;
    unsigned int sz;
    long long longval;
    char longstr[32] = {0};

    unsigned char *p = FUNC4(zl, 0);
    while (FUNC3(p, &value, &sz, &longval)) {
        if (!value) {
            /* Write the longval as a string so we can re-add it */
            sz = FUNC0(longstr, sizeof(longstr), longval);
            value = (unsigned char *)longstr;
        }
        FUNC1(quicklist, value, sz);
        p = FUNC5(zl, p);
    }
    FUNC2(zl);
    return quicklist;
}