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
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  CopyFlags ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(const char *from, const char *to, uid_t override_uid, gid_t override_gid, CopyFlags copy_flags) {
        return FUNC0(AT_FDCWD, from, AT_FDCWD, to, override_uid, override_gid, copy_flags, NULL, NULL, NULL);
}