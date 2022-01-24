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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  acl ;

/* Variables and functions */
 int /*<<< orphan*/  ENODATA ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  ENOTTY ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (char const*,char*,char*,int) ; 

__attribute__((used)) static bool FUNC2(const char *p) {
        char buffer[sizeof(acl) * 4];

        if (FUNC1(p, "system.posix_acl_access", buffer, sizeof(buffer)) < 0) {
                if (FUNC0(errno, EOPNOTSUPP, ENOTTY, ENODATA, ENOSYS))
                        return false;
        }

        return true;
}