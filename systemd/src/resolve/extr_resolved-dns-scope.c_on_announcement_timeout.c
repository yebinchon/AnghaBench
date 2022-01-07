
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int usec_t ;
typedef int sd_event_source ;
struct TYPE_3__ {int announce_event_source; } ;
typedef TYPE_1__ DnsScope ;


 int assert (int *) ;
 int dns_scope_announce (TYPE_1__*,int) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static int on_announcement_timeout(sd_event_source *s, usec_t usec, void *userdata) {
        DnsScope *scope = userdata;

        assert(s);

        scope->announce_event_source = sd_event_source_unref(scope->announce_event_source);

        (void) dns_scope_announce(scope, 0);
        return 0;
}
