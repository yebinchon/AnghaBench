#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ family; scalar_t__ mdns_ptr_rr; scalar_t__ mdns_address_rr; scalar_t__ llmnr_ptr_rr; scalar_t__ llmnr_address_rr; TYPE_5__* link; } ;
struct TYPE_16__ {scalar_t__ n_addresses; TYPE_4__* mdns_ipv6_scope; TYPE_3__* mdns_ipv4_scope; TYPE_2__* llmnr_ipv6_scope; TYPE_1__* llmnr_ipv4_scope; int /*<<< orphan*/  addresses; } ;
struct TYPE_15__ {int /*<<< orphan*/  zone; } ;
struct TYPE_14__ {int /*<<< orphan*/  zone; } ;
struct TYPE_13__ {int /*<<< orphan*/  zone; } ;
struct TYPE_12__ {int /*<<< orphan*/  zone; } ;
typedef  TYPE_6__ LinkAddress ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  addresses ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_6__* FUNC4 (TYPE_6__*) ; 

LinkAddress *FUNC5(LinkAddress *a) {
        if (!a)
                return NULL;

        if (a->link) {
                FUNC0(addresses, a->link->addresses, a);

                FUNC1(a->link->n_addresses > 0);
                a->link->n_addresses--;

                if (a->llmnr_address_rr) {
                        if (a->family == AF_INET && a->link->llmnr_ipv4_scope)
                                FUNC3(&a->link->llmnr_ipv4_scope->zone, a->llmnr_address_rr);
                        else if (a->family == AF_INET6 && a->link->llmnr_ipv6_scope)
                                FUNC3(&a->link->llmnr_ipv6_scope->zone, a->llmnr_address_rr);
                }

                if (a->llmnr_ptr_rr) {
                        if (a->family == AF_INET && a->link->llmnr_ipv4_scope)
                                FUNC3(&a->link->llmnr_ipv4_scope->zone, a->llmnr_ptr_rr);
                        else if (a->family == AF_INET6 && a->link->llmnr_ipv6_scope)
                                FUNC3(&a->link->llmnr_ipv6_scope->zone, a->llmnr_ptr_rr);
                }

                if (a->mdns_address_rr) {
                        if (a->family == AF_INET && a->link->mdns_ipv4_scope)
                                FUNC3(&a->link->mdns_ipv4_scope->zone, a->mdns_address_rr);
                        else if (a->family == AF_INET6 && a->link->mdns_ipv6_scope)
                                FUNC3(&a->link->mdns_ipv6_scope->zone, a->mdns_address_rr);
                }

                if (a->mdns_ptr_rr) {
                        if (a->family == AF_INET && a->link->mdns_ipv4_scope)
                                FUNC3(&a->link->mdns_ipv4_scope->zone, a->mdns_ptr_rr);
                        else if (a->family == AF_INET6 && a->link->mdns_ipv6_scope)
                                FUNC3(&a->link->mdns_ipv6_scope->zone, a->mdns_ptr_rr);
                }
        }

        FUNC2(a->llmnr_address_rr);
        FUNC2(a->llmnr_ptr_rr);
        FUNC2(a->mdns_address_rr);
        FUNC2(a->mdns_ptr_rr);

        return FUNC4(a);
}