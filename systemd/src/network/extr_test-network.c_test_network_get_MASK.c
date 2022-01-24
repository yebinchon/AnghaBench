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
struct ether_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sd_device ;
typedef  int /*<<< orphan*/  Network ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct ether_addr ETHER_ADDR_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,struct ether_addr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC2(Manager *manager, sd_device *loopback) {
        Network *network;
        const struct ether_addr mac = ETHER_ADDR_NULL;

        /* let's assume that the test machine does not have a .network file
           that applies to the loopback device... */
        FUNC0(FUNC1(manager, loopback, "lo", &mac, 0, NULL, NULL, &network) == -ENOENT);
        FUNC0(!network);
}