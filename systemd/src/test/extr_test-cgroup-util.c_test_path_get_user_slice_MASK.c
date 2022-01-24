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
 int /*<<< orphan*/  ENXIO ; 
 char* SPECIAL_ROOT_SLICE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("/user.slice", -ENXIO, NULL);
        FUNC0("/foobar", -ENXIO, NULL);
        FUNC0("/user.slice/user-waldo.slice", -ENXIO, NULL);
        FUNC0("", -ENXIO, NULL);
        FUNC0("foobar", -ENXIO, NULL);
        FUNC0("foobar.slice", -ENXIO, NULL);
        FUNC0("foo.slice/foo-bar.slice/waldo.service", -ENXIO, NULL);

        FUNC0("foo.slice/foo-bar.slice/user@1000.service", 0, SPECIAL_ROOT_SLICE);
        FUNC0("foo.slice/foo-bar.slice/user@1000.service/", 0, SPECIAL_ROOT_SLICE);
        FUNC0("foo.slice/foo-bar.slice/user@1000.service///", 0, SPECIAL_ROOT_SLICE);
        FUNC0("foo.slice/foo-bar.slice/user@1000.service/waldo.service", 0, SPECIAL_ROOT_SLICE);
        FUNC0("foo.slice/foo-bar.slice/user@1000.service/piep.slice/foo.service", 0, "piep.slice");
        FUNC0("/foo.slice//foo-bar.slice/user@1000.service/piep.slice//piep-pap.slice//foo.service", 0, "piep-pap.slice");
}