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
 int /*<<< orphan*/  SOCKET_NAME ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool
FUNC2(const char *serial) {
    process_t process = FUNC0(serial, SOCKET_NAME);
    return FUNC1(process, "adb reverse --remove");
}