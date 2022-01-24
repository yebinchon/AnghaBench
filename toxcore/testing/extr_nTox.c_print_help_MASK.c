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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(char *prog_name)
{
    FUNC0("nTox %.1f - Command-line tox-core client\n", 0.1);
    FUNC0("Usage: %s [--ipv4|--ipv6] IP PORT KEY [-f keyfile]\n", prog_name);

    FUNC1("Options: (order IS relevant)");
    FUNC1("  --ipv4 / --ipv6 [Optional] Support IPv4 only or IPv4 & IPv6.");
    FUNC1("  IP PORT KEY     [REQUIRED] A node to connect to (IP/Port) and its key.");
    FUNC1("  -f keyfile      [Optional] Specify a keyfile to read from and write to.");
}