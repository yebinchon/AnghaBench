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
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char**,unsigned int*,long long*) ; 

double FUNC4(unsigned char *sptr) {
    unsigned char *vstr;
    unsigned int vlen;
    long long vlong;
    char buf[128];
    double score;

    FUNC1(sptr != NULL);
    FUNC1(FUNC3(sptr,&vstr,&vlen,&vlong));

    if (vstr) {
        FUNC0(buf,vstr,vlen);
        buf[vlen] = '\0';
        score = FUNC2(buf,NULL);
    } else {
        score = vlong;
    }

    return score;
}