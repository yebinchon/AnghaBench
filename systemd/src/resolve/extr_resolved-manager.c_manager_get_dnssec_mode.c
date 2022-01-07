
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dnssec_mode; } ;
typedef TYPE_1__ Manager ;
typedef scalar_t__ DnssecMode ;


 scalar_t__ DNSSEC_NO ;
 scalar_t__ _DNSSEC_MODE_INVALID ;
 int assert (TYPE_1__*) ;

DnssecMode manager_get_dnssec_mode(Manager *m) {
        assert(m);

        if (m->dnssec_mode != _DNSSEC_MODE_INVALID)
                return m->dnssec_mode;

        return DNSSEC_NO;
}
