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
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 int LP_INTBUF_SIZE ; 
 unsigned char* FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (unsigned char*,scalar_t__*,unsigned char*) ; 
 unsigned char* FUNC2 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,unsigned char*) ; 

void FUNC4(unsigned char *lp) {
    unsigned char *p = FUNC0(lp);
    while(p) {
        unsigned char buf[LP_INTBUF_SIZE];
        int64_t v;
        unsigned char *ele = FUNC1(p,&v,buf);
        FUNC3(LL_WARNING,"- [%d] '%.*s'", (int)v, (int)v, ele);
        p = FUNC2(lp,p);
    }
}