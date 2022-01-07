
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct addrinfo {int ai_flags; int ai_socktype; } ;
struct TYPE_14__ {scalar_t__ type; int string; int * names_next; } ;
struct TYPE_13__ {int exhausted_servers; scalar_t__ poll_interval_usec; scalar_t__ poll_interval_max_usec; TYPE_3__* current_server_name; int resolve_query; int resolve; int event_retry; int event; int * fallback_servers; int * system_servers; int * link_servers; TYPE_1__* current_server_address; int ratelimit; } ;
struct TYPE_12__ {scalar_t__ addresses_next; } ;
typedef int ServerName ;
typedef TYPE_2__ Manager ;


 int AI_ADDRCONFIG ;
 int AI_NUMERICSERV ;
 scalar_t__ RETRY_USEC ;
 scalar_t__ SERVER_LINK ;
 int SOCK_DGRAM ;
 int assert (TYPE_2__*) ;
 int clock_boottime_or_monotonic () ;
 int log_debug (char*,...) ;
 int log_error_errno (int,char*) ;
 int manager_begin (TYPE_2__*) ;
 int manager_disconnect (TYPE_2__*) ;
 int manager_resolve_handler ;
 int manager_retry_connect ;
 int manager_set_server_address (TYPE_2__*,scalar_t__) ;
 int manager_set_server_name (TYPE_2__*,int *) ;
 scalar_t__ now (int ) ;
 int ratelimit_below (int *) ;
 int res_init () ;
 int resolve_getaddrinfo (int ,int *,int ,char*,struct addrinfo*,int ,int *,TYPE_2__*) ;
 int sd_event_add_time (int ,int *,int ,scalar_t__,int ,int ,TYPE_2__*) ;
 int sd_event_source_unref (int ) ;
 int server_name_flush_addresses (TYPE_3__*) ;

int manager_connect(Manager *m) {
        int r;

        assert(m);

        manager_disconnect(m);

        m->event_retry = sd_event_source_unref(m->event_retry);
        if (!ratelimit_below(&m->ratelimit)) {
                log_debug("Delaying attempts to contact servers.");

                r = sd_event_add_time(m->event, &m->event_retry, clock_boottime_or_monotonic(), now(clock_boottime_or_monotonic()) + RETRY_USEC, 0, manager_retry_connect, m);
                if (r < 0)
                        return log_error_errno(r, "Failed to create retry timer: %m");

                return 0;
        }



        if (m->current_server_address && m->current_server_address->addresses_next)
                manager_set_server_address(m, m->current_server_address->addresses_next);
        else {
                struct addrinfo hints = {
                        .ai_flags = AI_NUMERICSERV|AI_ADDRCONFIG,
                        .ai_socktype = SOCK_DGRAM,
                };


                if (m->current_server_name && m->current_server_name->names_next)
                        manager_set_server_name(m, m->current_server_name->names_next);
                else {
                        ServerName *f;
                        bool restart = 1;
                        if (!m->current_server_name || m->current_server_name->type == SERVER_LINK) {
                                f = m->system_servers;
                                if (!f)
                                        f = m->link_servers;
                        } else {
                                f = m->link_servers;
                                if (!f)
                                        f = m->system_servers;
                                else
                                        restart = 0;
                        }

                        if (!f)
                                f = m->fallback_servers;

                        if (!f) {
                                manager_set_server_name(m, ((void*)0));
                                log_debug("No server found.");
                                return 0;
                        }

                        if (restart && !m->exhausted_servers && m->poll_interval_usec) {
                                log_debug("Waiting after exhausting servers.");
                                r = sd_event_add_time(m->event, &m->event_retry, clock_boottime_or_monotonic(), now(clock_boottime_or_monotonic()) + m->poll_interval_usec, 0, manager_retry_connect, m);
                                if (r < 0)
                                        return log_error_errno(r, "Failed to create retry timer: %m");

                                m->exhausted_servers = 1;


                                if (m->poll_interval_usec < m->poll_interval_max_usec)
                                        m->poll_interval_usec *= 2;

                                return 0;
                        }

                        m->exhausted_servers = 0;

                        manager_set_server_name(m, f);
                }



                res_init();


                server_name_flush_addresses(m->current_server_name);

                log_debug("Resolving %s...", m->current_server_name->string);

                r = resolve_getaddrinfo(m->resolve, &m->resolve_query, m->current_server_name->string, "123", &hints, manager_resolve_handler, ((void*)0), m);
                if (r < 0)
                        return log_error_errno(r, "Failed to create resolver: %m");

                return 1;
        }

        r = manager_begin(m);
        if (r < 0)
                return r;

        return 1;
}
