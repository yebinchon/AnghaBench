
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dnssec_mode; TYPE_1__* unicast_scope; } ;
struct TYPE_5__ {int cache; } ;
typedef TYPE_2__ Link ;
typedef scalar_t__ DnssecMode ;


 scalar_t__ DNSSEC_ALLOW_DOWNGRADE ;
 scalar_t__ DNSSEC_NO ;
 scalar_t__ DNSSEC_YES ;
 scalar_t__ IN_SET (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ _DNSSEC_MODE_INVALID ;
 int assert (TYPE_2__*) ;
 int dns_cache_flush (int *) ;
 int log_warning (char*) ;

void link_set_dnssec_mode(Link *l, DnssecMode mode) {

        assert(l);


        if (IN_SET(mode, DNSSEC_YES, DNSSEC_ALLOW_DOWNGRADE))
                log_warning("DNSSEC option for the link cannot be enabled or set to allow-downgrade when systemd-resolved is built without gcrypt support. Turning off DNSSEC support.");
        return;


        if (l->dnssec_mode == mode)
                return;

        if ((l->dnssec_mode == _DNSSEC_MODE_INVALID) ||
            (l->dnssec_mode == DNSSEC_NO && mode != DNSSEC_NO) ||
            (l->dnssec_mode == DNSSEC_ALLOW_DOWNGRADE && mode == DNSSEC_YES)) {



                if (l->unicast_scope)
                        dns_cache_flush(&l->unicast_scope->cache);
        }

        l->dnssec_mode = mode;
}
