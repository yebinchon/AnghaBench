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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 long FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(char *optarg, uint16_t *port) {
    char *endptr;
    if (*optarg == '\0') {
        FUNC0("Invalid port parameter is empty");
        return false;
    }
    long value = FUNC1(optarg, &endptr, 0);
    if (*endptr != '\0') {
        FUNC0("Invalid port: %s", optarg);
        return false;
    }
    if (value & ~0xffff) {
        FUNC0("Port out of range: %ld", value);
        return false;
    }

    *port = (uint16_t) value;
    return true;
}