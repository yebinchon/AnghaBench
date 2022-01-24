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
typedef  int /*<<< orphan*/  robj ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/ * FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (long long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char**,unsigned int*,long long*) ; 

robj *FUNC3(robj *o, sds field) {
    unsigned char *vstr;
    unsigned int vlen;
    long long vll;

    if (FUNC2(o,field,&vstr,&vlen,&vll) == C_ERR) return NULL;
    if (vstr) return FUNC0((char*)vstr,vlen);
    else return FUNC1(vll);
}