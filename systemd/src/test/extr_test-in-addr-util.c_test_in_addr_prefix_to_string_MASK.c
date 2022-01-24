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
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC1(AF_INET, "0.0.0.0/32");
        FUNC1(AF_INET, "1.2.3.4/0");
        FUNC1(AF_INET, "1.2.3.4/24");
        FUNC1(AF_INET, "1.2.3.4/32");
        FUNC1(AF_INET, "255.255.255.255/32");

        FUNC1(AF_INET6, "::1/128");
        FUNC1(AF_INET6, "fd00:abcd::1/64");
        FUNC1(AF_INET6, "fd00:abcd::1234:1/64");
        FUNC1(AF_INET6, "1111:2222:3333:4444:5555:6666:7777:8888/128");

        FUNC0(AF_INET, "0.0.0.0");
        FUNC0(AF_INET, "192.168.0.1");

        FUNC0(AF_INET6, "fd00:0000:0000:0000:0000:0000:0000:0001/64");
        FUNC0(AF_INET6, "fd00:1111::0000:2222:3333:4444:0001/64");
}