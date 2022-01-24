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
typedef  int /*<<< orphan*/  vbuf ;

/* Variables and functions */
 unsigned int FUNC0 (char*,int,long long) ; 
 int FUNC1 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char**,unsigned int*,long long*) ; 

int FUNC4(unsigned char *eptr, unsigned char *cstr, unsigned int clen) {
    unsigned char *vstr;
    unsigned int vlen;
    long long vlong;
    unsigned char vbuf[32];
    int minlen, cmp;

    FUNC2(FUNC3(eptr,&vstr,&vlen,&vlong));
    if (vstr == NULL) {
        /* Store string representation of long long in buf. */
        vlen = FUNC0((char*)vbuf,sizeof(vbuf),vlong);
        vstr = vbuf;
    }

    minlen = (vlen < clen) ? vlen : clen;
    cmp = FUNC1(vstr,cstr,minlen);
    if (cmp == 0) return vlen-clen;
    return cmp;
}