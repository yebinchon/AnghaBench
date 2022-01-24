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
typedef  int /*<<< orphan*/  process_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const* const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static process_t
FUNC2(const char *serial, bool enabled) {
    const char *value = enabled ? "1" : "0";
    const char *const adb_cmd[] = {
        "shell", "settings", "put", "system", "show_touches", value
    };
    return FUNC1(serial, adb_cmd, FUNC0(adb_cmd));
}