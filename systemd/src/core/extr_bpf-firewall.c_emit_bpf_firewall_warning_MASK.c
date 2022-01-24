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
typedef  int /*<<< orphan*/  Unit ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  bpf_firewall_unsupported_reason ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

void FUNC3(Unit *u) {
        static bool warned = false;

        if (!warned) {
                bool quiet = bpf_firewall_unsupported_reason == -EPERM && FUNC0();

                FUNC2(u, quiet ? LOG_DEBUG : LOG_WARNING, bpf_firewall_unsupported_reason,
                              "unit configures an IP firewall, but %s.\n"
                              "(This warning is only shown for the first unit using IP firewalling.)",
                              FUNC1() != 0 ? "not running as root" :
                                              "the local system does not support BPF/cgroup firewalling");
                warned = true;
        }
}