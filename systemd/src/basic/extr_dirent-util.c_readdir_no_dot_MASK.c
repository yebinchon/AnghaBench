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
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC1 (int /*<<< orphan*/ *) ; 

struct dirent* FUNC2(DIR *dirp) {
        struct dirent* d;

        for (;;) {
                d = FUNC1(dirp);
                if (d && FUNC0(d->d_name))
                        continue;
                return d;
        }
}