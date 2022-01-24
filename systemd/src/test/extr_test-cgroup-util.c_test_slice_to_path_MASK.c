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
 int /*<<< orphan*/  EINVAL ; 
 char* SPECIAL_ROOT_SLICE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("foobar.slice", "foobar.slice", 0);
        FUNC0("foobar-waldo.slice", "foobar.slice/foobar-waldo.slice", 0);
        FUNC0("foobar-waldo.service", NULL, -EINVAL);
        FUNC0(SPECIAL_ROOT_SLICE, "", 0);
        FUNC0("--.slice", NULL, -EINVAL);
        FUNC0("-", NULL, -EINVAL);
        FUNC0("-foo-.slice", NULL, -EINVAL);
        FUNC0("-foo.slice", NULL, -EINVAL);
        FUNC0("foo-.slice", NULL, -EINVAL);
        FUNC0("foo--bar.slice", NULL, -EINVAL);
        FUNC0("foo.slice/foo--bar.slice", NULL, -EINVAL);
        FUNC0("a-b.slice", "a.slice/a-b.slice", 0);
        FUNC0("a-b-c-d-e.slice", "a.slice/a-b.slice/a-b-c.slice/a-b-c-d.slice/a-b-c-d-e.slice", 0);

        FUNC0("foobar@.slice", NULL, -EINVAL);
        FUNC0("foobar@waldo.slice", NULL, -EINVAL);
        FUNC0("foobar@waldo.service", NULL, -EINVAL);
        FUNC0("-foo@-.slice", NULL, -EINVAL);
        FUNC0("-foo@.slice", NULL, -EINVAL);
        FUNC0("foo@-.slice", NULL, -EINVAL);
        FUNC0("foo@@bar.slice", NULL, -EINVAL);
        FUNC0("foo.slice/foo@@bar.slice", NULL, -EINVAL);
}