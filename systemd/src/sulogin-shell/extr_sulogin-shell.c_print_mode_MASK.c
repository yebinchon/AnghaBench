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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(const char* mode) {
        FUNC1("You are in %s mode. After logging in, type \"journalctl -xb\" to view\n"
                "system logs, \"systemctl reboot\" to reboot, \"systemctl default\" or \"exit\"\n"
                "to boot into default mode.\n", mode);
        FUNC0(stdout);
}