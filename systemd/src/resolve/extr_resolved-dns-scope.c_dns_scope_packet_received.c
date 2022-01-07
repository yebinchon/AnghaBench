
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_4__ {int max_rtt; int resend_timeout; } ;
typedef TYPE_1__ DnsScope ;


 int MAX (int ,int) ;
 int MIN (int ,int ) ;
 int MULTICAST_RESEND_TIMEOUT_MAX_USEC ;
 int MULTICAST_RESEND_TIMEOUT_MIN_USEC ;
 int assert (TYPE_1__*) ;

void dns_scope_packet_received(DnsScope *s, usec_t rtt) {
        assert(s);

        if (rtt <= s->max_rtt)
                return;

        s->max_rtt = rtt;
        s->resend_timeout = MIN(MAX(MULTICAST_RESEND_TIMEOUT_MIN_USEC, s->max_rtt * 2), MULTICAST_RESEND_TIMEOUT_MAX_USEC);
}
