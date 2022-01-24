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
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static int FUNC1(char *buf, bool unicode) {
        if (unicode || FUNC0()) {
                buf[0] = 0xe2; /* tri-dot ellipsis: … */
                buf[1] = 0x80;
                buf[2] = 0xa6;
        } else {
                buf[0] = '.';
                buf[1] = '.';
                buf[2] = '.';
        }

        return 3;
}