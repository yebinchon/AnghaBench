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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("getty@tty2.service", 0, "getty@tty2.service");
        FUNC0("getty@tty2.service/", 0, "getty@tty2.service");
        FUNC0("getty@tty2.service/xxx", 0, "getty@tty2.service");
        FUNC0("getty@.service/", -ENXIO, NULL);
        FUNC0("getty@.service", -ENXIO, NULL);
        FUNC0("getty.service", 0, "getty.service");
        FUNC0("getty", -ENXIO, NULL);
        FUNC0("getty/waldo", -ENXIO, NULL);
        FUNC0("_cpu.service", 0, "cpu.service");
}