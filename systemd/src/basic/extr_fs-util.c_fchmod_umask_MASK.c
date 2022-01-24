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
typedef  int mode_t ;

/* Variables and functions */
 int errno ; 
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (int) ; 

int FUNC2(int fd, mode_t m) {
        mode_t u;
        int r;

        u = FUNC1(0777);
        r = FUNC0(fd, m & (~u)) < 0 ? -errno : 0;
        FUNC1(u);

        return r;
}