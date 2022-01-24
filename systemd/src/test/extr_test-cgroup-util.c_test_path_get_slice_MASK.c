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
 char* SPECIAL_ROOT_SLICE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("/user.slice", 0, "user.slice");
        FUNC0("/foobar", 0, SPECIAL_ROOT_SLICE);
        FUNC0("/user.slice/user-waldo.slice", 0, "user-waldo.slice");
        FUNC0("", 0, SPECIAL_ROOT_SLICE);
        FUNC0("foobar", 0, SPECIAL_ROOT_SLICE);
        FUNC0("foobar.slice", 0, "foobar.slice");
        FUNC0("foo.slice/foo-bar.slice/waldo.service", 0, "foo-bar.slice");
}