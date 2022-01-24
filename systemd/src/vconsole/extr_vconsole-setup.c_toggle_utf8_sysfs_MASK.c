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
 int /*<<< orphan*/  WRITE_STRING_FILE_DISABLE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(bool utf8) {
        int r;

        r = FUNC4("/sys/module/vt/parameters/default_utf8", FUNC3(utf8), WRITE_STRING_FILE_DISABLE_BUFFER);
        if (r < 0)
                return FUNC2(r, "Failed to %s sysfs UTF-8 flag: %m", FUNC0(utf8));

        FUNC1("Sysfs UTF-8 flag %sd", FUNC0(utf8));
        return 0;
}