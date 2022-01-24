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
 int ZIPLIST_HEAD ; 
 unsigned char* FUNC2 (unsigned char*,unsigned char*,unsigned char*,unsigned int) ; 

unsigned char *FUNC3(unsigned char *zl, unsigned char *s, unsigned int slen, int where) {
    unsigned char *p;
    p = (where == ZIPLIST_HEAD) ? FUNC1(zl) : FUNC0(zl);
    return FUNC2(zl,p,s,slen);
}