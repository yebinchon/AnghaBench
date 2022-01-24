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
typedef  int /*<<< orphan*/  hashTypeIterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,unsigned char**,unsigned int*,long long*) ; 
 int /*<<< orphan*/  FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned int) ; 

sds FUNC3(hashTypeIterator *hi, int what) {
    unsigned char *vstr;
    unsigned int vlen;
    long long vll;

    FUNC0(hi,what,&vstr,&vlen,&vll);
    if (vstr) return FUNC2(vstr,vlen);
    return FUNC1(vll);
}