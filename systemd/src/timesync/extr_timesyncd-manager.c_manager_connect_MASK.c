#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct addrinfo {int ai_flags; int /*<<< orphan*/  ai_socktype; } ;
struct TYPE_14__ {scalar_t__ type; int /*<<< orphan*/  string; int /*<<< orphan*/ * names_next; } ;
struct TYPE_13__ {int exhausted_servers; scalar_t__ poll_interval_usec; scalar_t__ poll_interval_max_usec; TYPE_3__* current_server_name; int /*<<< orphan*/  resolve_query; int /*<<< orphan*/  resolve; int /*<<< orphan*/  event_retry; int /*<<< orphan*/  event; int /*<<< orphan*/ * fallback_servers; int /*<<< orphan*/ * system_servers; int /*<<< orphan*/ * link_servers; TYPE_1__* current_server_address; int /*<<< orphan*/  ratelimit; } ;
struct TYPE_12__ {scalar_t__ addresses_next; } ;
typedef  int /*<<< orphan*/  ServerName ;
typedef  TYPE_2__ Manager ;

/* Variables and functions */
 int AI_ADDRCONFIG ; 
 int AI_NUMERICSERV ; 
 scalar_t__ RETRY_USEC ; 
 scalar_t__ SERVER_LINK ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int,char*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  manager_resolve_handler ; 
 int /*<<< orphan*/  manager_retry_connect ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct addrinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 

int FUNC15(Manager *m) {
        int r;

        FUNC0(m);

        FUNC5(m);

        m->event_retry = FUNC13(m->event_retry);
        if (!FUNC9(&m->ratelimit)) {
                FUNC2("Delaying attempts to contact servers.");

                r = FUNC12(m->event, &m->event_retry, FUNC1(), FUNC8(FUNC1()) + RETRY_USEC, 0, manager_retry_connect, m);
                if (r < 0)
                        return FUNC3(r, "Failed to create retry timer: %m");

                return 0;
        }

        /* If we already are operating on some address, switch to the
         * next one. */
        if (m->current_server_address && m->current_server_address->addresses_next)
                FUNC6(m, m->current_server_address->addresses_next);
        else {
                struct addrinfo hints = {
                        .ai_flags = AI_NUMERICSERV|AI_ADDRCONFIG,
                        .ai_socktype = SOCK_DGRAM,
                };

                /* Hmm, we are through all addresses, let's look for the next host instead */
                if (m->current_server_name && m->current_server_name->names_next)
                        FUNC7(m, m->current_server_name->names_next);
                else {
                        ServerName *f;
                        bool restart = true;

                        /* Our current server name list is exhausted,
                         * let's find the next one to iterate. First
                         * we try the system list, then the link list.
                         * After having processed the link list we
                         * jump back to the system list. However, if
                         * both lists are empty, we change to the
                         * fallback list. */
                        if (!m->current_server_name || m->current_server_name->type == SERVER_LINK) {
                                f = m->system_servers;
                                if (!f)
                                        f = m->link_servers;
                        } else {
                                f = m->link_servers;
                                if (!f)
                                        f = m->system_servers;
                                else
                                        restart = false;
                        }

                        if (!f)
                                f = m->fallback_servers;

                        if (!f) {
                                FUNC7(m, NULL);
                                FUNC2("No server found.");
                                return 0;
                        }

                        if (restart && !m->exhausted_servers && m->poll_interval_usec) {
                                FUNC2("Waiting after exhausting servers.");
                                r = FUNC12(m->event, &m->event_retry, FUNC1(), FUNC8(FUNC1()) + m->poll_interval_usec, 0, manager_retry_connect, m);
                                if (r < 0)
                                        return FUNC3(r, "Failed to create retry timer: %m");

                                m->exhausted_servers = true;

                                /* Increase the polling interval */
                                if (m->poll_interval_usec < m->poll_interval_max_usec)
                                        m->poll_interval_usec *= 2;

                                return 0;
                        }

                        m->exhausted_servers = false;

                        FUNC7(m, f);
                }

                /* Tell the resolver to reread /etc/resolv.conf, in
                 * case it changed. */
                FUNC10();

                /* Flush out any previously resolved addresses */
                FUNC14(m->current_server_name);

                FUNC2("Resolving %s...", m->current_server_name->string);

                r = FUNC11(m->resolve, &m->resolve_query, m->current_server_name->string, "123", &hints, manager_resolve_handler, NULL, m);
                if (r < 0)
                        return FUNC3(r, "Failed to create resolver: %m");

                return 1;
        }

        r = FUNC4(m);
        if (r < 0)
                return r;

        return 1;
}