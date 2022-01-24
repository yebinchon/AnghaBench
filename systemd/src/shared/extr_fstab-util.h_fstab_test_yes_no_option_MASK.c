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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,char const*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC2(const char *opts, const char *yes_no) {
        const char *opt;

        /* If first name given is last, return 1.
         * If second name given is last or neither is found, return 0. */

        FUNC0(FUNC1(opts, yes_no, &opt, NULL, NULL) >= 0);

        return opt == yes_no;
}