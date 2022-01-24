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
struct utmpx {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct utmpx const*) ; 
 int FUNC1 (struct utmpx const*) ; 

__attribute__((used)) static int FUNC2(const struct utmpx *store_utmp, const struct utmpx *store_wtmp) {
        int r, s;

        r = FUNC0(store_utmp);
        s = FUNC1(store_wtmp);

        if (r >= 0)
                r = s;

        /* If utmp/wtmp have been disabled, that's a good thing, hence
         * ignore the errors */
        if (r == -ENOENT)
                r = 0;

        return r;
}