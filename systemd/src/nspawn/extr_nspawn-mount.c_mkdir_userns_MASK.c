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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int errno ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *path, mode_t mode, uid_t uid_shift) {
        int r;

        FUNC0(path);

        r = FUNC2(path, mode);
        if (r < 0 && r != -EEXIST)
                return r;

        if (uid_shift == UID_INVALID)
                return 0;

        if (FUNC1(path, uid_shift, uid_shift) < 0)
                return -errno;

        return 0;
}