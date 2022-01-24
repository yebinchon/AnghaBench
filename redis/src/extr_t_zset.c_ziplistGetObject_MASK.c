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
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long long) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char**,unsigned int*,long long*) ; 

sds FUNC4(unsigned char *sptr) {
    unsigned char *vstr;
    unsigned int vlen;
    long long vlong;

    FUNC2(sptr != NULL);
    FUNC2(FUNC3(sptr,&vstr,&vlen,&vlong));

    if (vstr) {
        return FUNC1((char*)vstr,vlen);
    } else {
        return FUNC0(vlong);
    }
}