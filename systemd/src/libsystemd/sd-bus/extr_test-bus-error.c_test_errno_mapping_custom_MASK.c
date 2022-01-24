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
 char* BUS_ERROR_NO_SUCH_UNIT ; 
 int /*<<< orphan*/  EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_errors3 ; 
 int /*<<< orphan*/  test_errors4 ; 
 int /*<<< orphan*/  test_errors_bad1 ; 
 int /*<<< orphan*/  test_errors_bad2 ; 

__attribute__((used)) static void FUNC3(void) {
        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error", NULL) == -5);
        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error-2", NULL) == -52);
        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error-x", NULL) == -EIO);
        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error-33", NULL) == -333);

        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error-88", NULL) == -EIO);
        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error-99", NULL) == -EIO);
        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error-77", NULL) == -EIO);

        FUNC0(FUNC1(test_errors3) > 0);
        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error-88", NULL) == -888);
        FUNC0(FUNC1(test_errors4) > 0);
        FUNC0(FUNC1(test_errors4) == 0);
        FUNC0(FUNC1(test_errors3) == 0);

        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error-99", NULL) == -999);
        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error-77", NULL) == -777);
        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error-78", NULL) == -778);
        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error-2", NULL) == -52);
        FUNC0(FUNC2(NULL, "org.freedesktop.custom-dbus-error-y", NULL) == -EIO);

        FUNC0(FUNC2(NULL, BUS_ERROR_NO_SUCH_UNIT, NULL) == -ENOENT);

        FUNC0(FUNC1(test_errors_bad1) == -EINVAL);
        FUNC0(FUNC1(test_errors_bad2) == -EINVAL);
}