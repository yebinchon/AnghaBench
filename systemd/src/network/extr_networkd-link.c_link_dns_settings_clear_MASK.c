#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int n_dns; int dns_default_route; int /*<<< orphan*/  dnssec_negative_trust_anchors; int /*<<< orphan*/  dns_over_tls_mode; int /*<<< orphan*/  dnssec_mode; void* mdns; void* llmnr; void* route_domains; void* search_domains; int /*<<< orphan*/  dns; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  _DNSSEC_MODE_INVALID ; 
 int /*<<< orphan*/  _DNS_OVER_TLS_MODE_INVALID ; 
 void* _RESOLVE_SUPPORT_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(Link *link) {
        link->dns = FUNC0(link->dns);
        link->n_dns = (unsigned) -1;

        link->search_domains = FUNC1(link->search_domains);
        link->route_domains = FUNC1(link->route_domains);

        link->dns_default_route = -1;
        link->llmnr = _RESOLVE_SUPPORT_INVALID;
        link->mdns = _RESOLVE_SUPPORT_INVALID;
        link->dnssec_mode = _DNSSEC_MODE_INVALID;
        link->dns_over_tls_mode = _DNS_OVER_TLS_MODE_INVALID;

        link->dnssec_negative_trust_anchors = FUNC2(link->dnssec_negative_trust_anchors);
}