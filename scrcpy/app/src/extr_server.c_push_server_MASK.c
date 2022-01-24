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
 int /*<<< orphan*/  DEVICE_SERVER_PATH ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool
FUNC3(const char *serial) {
    process_t process = FUNC0(serial, FUNC1(), DEVICE_SERVER_PATH);
    return FUNC2(process, "adb push");
}