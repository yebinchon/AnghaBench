
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_4__ {int resend_timeout; } ;
typedef TYPE_1__ DnsScope ;


 int MIN (int,int ) ;
 int MULTICAST_RESEND_TIMEOUT_MAX_USEC ;
 int assert (TYPE_1__*) ;

void dns_scope_packet_lost(DnsScope *s, usec_t usec) {
        assert(s);

        if (s->resend_timeout <= usec)
                s->resend_timeout = MIN(s->resend_timeout * 2, MULTICAST_RESEND_TIMEOUT_MAX_USEC);
}
