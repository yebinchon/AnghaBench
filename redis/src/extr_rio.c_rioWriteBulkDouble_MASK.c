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
typedef  int /*<<< orphan*/  rio ;
typedef  int /*<<< orphan*/  dbuf ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 unsigned int FUNC1 (char*,int,char*,double) ; 

size_t FUNC2(rio *r, double d) {
    char dbuf[128];
    unsigned int dlen;

    dlen = FUNC1(dbuf,sizeof(dbuf),"%.17g",d);
    return FUNC0(r,dbuf,dlen);
}