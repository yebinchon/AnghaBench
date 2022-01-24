#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ protocol; TYPE_2__* manager; } ;
struct TYPE_14__ {scalar_t__ current_feature_level; scalar_t__ dns_udp_fd; int /*<<< orphan*/  sent; TYPE_9__* scope; int /*<<< orphan*/  server; int /*<<< orphan*/  dns_udp_event_source; TYPE_1__* key; } ;
struct TYPE_13__ {int /*<<< orphan*/  event; } ;
struct TYPE_12__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ DnsTransaction ;

/* Variables and functions */
 scalar_t__ DNS_PROTOCOL_DNS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_UDP ; 
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_9__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_dns_packet ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC13(DnsTransaction *t) {
        int r;

        FUNC1(t);

        if (t->scope->protocol == DNS_PROTOCOL_DNS) {

                r = FUNC7(t);
                if (r < 0)
                        return r;

                if (t->current_feature_level < DNS_SERVER_FEATURE_LEVEL_UDP || FUNC0(t->current_feature_level))
                        return -EAGAIN; /* Sorry, can't do UDP, try TCP! */

                if (!FUNC5(t->server) && FUNC9(t->key->type))
                        return -EOPNOTSUPP;

                if (r > 0 || t->dns_udp_fd < 0) { /* Server changed, or no connection yet. */
                        int fd;

                        FUNC6(t);

                        fd = FUNC3(t->scope, t->server, 53);
                        if (fd < 0)
                                return fd;

                        r = FUNC11(t->scope->manager->event, &t->dns_udp_event_source, fd, EPOLLIN, on_dns_packet, t);
                        if (r < 0) {
                                FUNC10(fd);
                                return r;
                        }

                        (void) FUNC12(t->dns_udp_event_source, "dns-transaction-udp");
                        t->dns_udp_fd = fd;
                }

                r = FUNC4(t->server, t->sent, t->current_feature_level);
                if (r < 0)
                        return r;
        } else
                FUNC6(t);

        r = FUNC2(t->scope, t->dns_udp_fd, t->sent);
        if (r < 0)
                return r;

        FUNC8(t);

        return 0;
}