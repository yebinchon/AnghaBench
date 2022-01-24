#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int marked; int type; TYPE_1__* manager; int /*<<< orphan*/  dns_servers; struct TYPE_11__* link; int /*<<< orphan*/  servers_next; int /*<<< orphan*/  linked; } ;
struct TYPE_10__ {int /*<<< orphan*/  fallback_dns_servers; int /*<<< orphan*/  dns_servers; } ;
typedef  TYPE_2__ DnsServer ;

/* Variables and functions */
#define  DNS_SERVER_FALLBACK 130 
#define  DNS_SERVER_LINK 129 
#define  DNS_SERVER_SYSTEM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  servers ; 

void FUNC5(DnsServer *s) {
        DnsServer *tail;

        FUNC3(s);

        if (!s->marked)
                return;

        s->marked = false;

        if (!s->linked || !s->servers_next)
                return;

        /* Move us to the end of the list, so that the order is
         * strictly kept, if we are not at the end anyway. */

        switch (s->type) {

        case DNS_SERVER_LINK:
                FUNC3(s->link);
                FUNC0(servers, s, tail);
                FUNC2(servers, s->link->dns_servers, s);
                FUNC1(servers, s->link->dns_servers, tail, s);
                break;

        case DNS_SERVER_SYSTEM:
                FUNC0(servers, s, tail);
                FUNC2(servers, s->manager->dns_servers, s);
                FUNC1(servers, s->manager->dns_servers, tail, s);
                break;

        case DNS_SERVER_FALLBACK:
                FUNC0(servers, s, tail);
                FUNC2(servers, s->manager->fallback_dns_servers, s);
                FUNC1(servers, s->manager->fallback_dns_servers, tail, s);
                break;

        default:
                FUNC4("Unknown server type");
        }
}