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
 unsigned char LP_EOF ; 
 int LP_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 unsigned char* FUNC2 (int) ; 

unsigned char *FUNC3(void) {
    unsigned char *lp = FUNC2(LP_HDR_SIZE+1);
    if (lp == NULL) return NULL;
    FUNC1(lp,LP_HDR_SIZE+1);
    FUNC0(lp,0);
    lp[LP_HDR_SIZE] = LP_EOF;
    return lp;
}