#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* network; } ;
struct TYPE_6__ {scalar_t__ n_ipv6_proxy_ndp_addresses; int /*<<< orphan*/  ipv6_proxy_ndp_addresses; } ;
typedef  TYPE_2__ IPv6ProxyNDPAddress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  ipv6_proxy_ndp_addresses ; 

void FUNC3(IPv6ProxyNDPAddress *ipv6_proxy_ndp_address) {
        if (!ipv6_proxy_ndp_address)
                return;

        if (ipv6_proxy_ndp_address->network) {
                FUNC0(ipv6_proxy_ndp_addresses, ipv6_proxy_ndp_address->network->ipv6_proxy_ndp_addresses,
                            ipv6_proxy_ndp_address);

                FUNC1(ipv6_proxy_ndp_address->network->n_ipv6_proxy_ndp_addresses > 0);
                ipv6_proxy_ndp_address->network->n_ipv6_proxy_ndp_addresses--;
        }

        FUNC2(ipv6_proxy_ndp_address);
}