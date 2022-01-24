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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("/user.slice/user-1000.slice/session-2.scope/foobar.service", 0, 1000);
        FUNC0("/user.slice/user-1006.slice", 0, 1006);
        FUNC0("", -ENXIO, 0);
}