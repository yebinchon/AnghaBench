
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ mdns_support; } ;
typedef TYPE_1__ Manager ;


 int EADDRINUSE ;
 scalar_t__ RESOLVE_SUPPORT_NO ;
 int assert (TYPE_1__*) ;
 int log_warning (char*) ;
 int manager_mdns_ipv4_fd (TYPE_1__*) ;
 int manager_mdns_ipv6_fd (TYPE_1__*) ;
 int manager_mdns_stop (TYPE_1__*) ;
 scalar_t__ socket_ipv6_is_supported () ;

int manager_mdns_start(Manager *m) {
        int r;

        assert(m);

        if (m->mdns_support == RESOLVE_SUPPORT_NO)
                return 0;

        r = manager_mdns_ipv4_fd(m);
        if (r == -EADDRINUSE)
                goto eaddrinuse;
        if (r < 0)
                return r;

        if (socket_ipv6_is_supported()) {
                r = manager_mdns_ipv6_fd(m);
                if (r == -EADDRINUSE)
                        goto eaddrinuse;
                if (r < 0)
                        return r;
        }

        return 0;

eaddrinuse:
        log_warning("Another mDNS responder prohibits binding the socket to the same port. Turning off mDNS support.");
        m->mdns_support = RESOLVE_SUPPORT_NO;
        manager_mdns_stop(m);

        return 0;
}
