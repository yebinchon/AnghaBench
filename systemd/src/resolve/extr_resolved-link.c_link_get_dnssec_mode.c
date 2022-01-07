
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dnssec_mode; int manager; } ;
typedef TYPE_1__ Link ;
typedef scalar_t__ DnssecMode ;


 scalar_t__ _DNSSEC_MODE_INVALID ;
 int assert (TYPE_1__*) ;
 scalar_t__ manager_get_dnssec_mode (int ) ;

DnssecMode link_get_dnssec_mode(Link *l) {
        assert(l);

        if (l->dnssec_mode != _DNSSEC_MODE_INVALID)
                return l->dnssec_mode;

        return manager_get_dnssec_mode(l->manager);
}
