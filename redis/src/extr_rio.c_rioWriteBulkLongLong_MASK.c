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
typedef  int /*<<< orphan*/  lbuf ;

/* Variables and functions */
 unsigned int FUNC0 (char*,int,long long) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 

size_t FUNC2(rio *r, long long l) {
    char lbuf[32];
    unsigned int llen;

    llen = FUNC0(lbuf,sizeof(lbuf),l);
    return FUNC1(r,lbuf,llen);
}