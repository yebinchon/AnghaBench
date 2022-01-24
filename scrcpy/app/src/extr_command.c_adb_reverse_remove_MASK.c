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
typedef  int /*<<< orphan*/  remote ;
typedef  int /*<<< orphan*/  process_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 

process_t
FUNC3(const char *serial, const char *device_socket_name) {
    char remote[108 + 14 + 1]; // localabstract:NAME
    FUNC2(remote, sizeof(remote), "localabstract:%s", device_socket_name);
    const char *const adb_cmd[] = {"reverse", "--remove", remote};
    return FUNC1(serial, adb_cmd, FUNC0(adb_cmd));
}