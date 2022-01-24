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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int LONG_STR_SIZE ; 
 int /*<<< orphan*/  LP_REPLACE ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC1 (unsigned char*,unsigned char*,int,unsigned char*,int /*<<< orphan*/ ,unsigned char**) ; 

unsigned char *FUNC2(unsigned char *lp, unsigned char **pos, int64_t value) {
    char buf[LONG_STR_SIZE];
    int slen = FUNC0(buf,sizeof(buf),value);
    return FUNC1(lp, (unsigned char*)buf, slen, *pos, LP_REPLACE, pos);
}