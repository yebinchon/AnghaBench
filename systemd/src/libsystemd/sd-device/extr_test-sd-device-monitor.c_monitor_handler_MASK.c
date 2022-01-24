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
typedef  int /*<<< orphan*/  sd_device_monitor ;
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*,char const*) ; 

__attribute__((used)) static int FUNC5(sd_device_monitor *m, sd_device *d, void *userdata) {
        const char *s, *syspath = userdata;

        FUNC0(FUNC1(d, &s) >= 0);
        FUNC0(FUNC4(s, syspath));

        return FUNC3(FUNC2(m), 100);
}