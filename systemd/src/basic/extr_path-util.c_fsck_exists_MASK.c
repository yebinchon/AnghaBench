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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 char* FUNC3 (char*,char const*) ; 

int FUNC4(const char *fstype) {
        const char *checker;

        FUNC0(fstype);

        if (FUNC2(fstype, "auto"))
                return -EINVAL;

        checker = FUNC3("fsck.", fstype);
        return FUNC1(checker);
}