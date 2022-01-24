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
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,char*,char*) ; 

__attribute__((used)) static int FUNC1(int argc, char **argv, void *userdata) {
        sd_bus *bus = userdata;

        if (argc == 2)
                return FUNC0(bus, NULL, NULL, argv[1]);
        else if (argc == 3)
                return FUNC0(bus, NULL, argv[1], argv[2]);
        else
                return FUNC0(bus, argv[1], argv[2], argv[3]);
}