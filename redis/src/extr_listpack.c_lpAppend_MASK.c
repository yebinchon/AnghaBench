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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  LP_BEFORE ; 
 int FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (unsigned char*,unsigned char*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

unsigned char *FUNC2(unsigned char *lp, unsigned char *ele, uint32_t size) {
    uint64_t listpack_bytes = FUNC0(lp);
    unsigned char *eofptr = lp + listpack_bytes - 1;
    return FUNC1(lp,ele,size,eofptr,LP_BEFORE,NULL);
}