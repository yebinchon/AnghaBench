
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_4__ {scalar_t__ verified_usec; int features_grace_period_usec; int event; struct TYPE_4__* manager; } ;
typedef TYPE_1__ DnsServer ;


 int DNS_SERVER_FEATURE_GRACE_PERIOD_MAX_USEC ;
 int MIN (int,int ) ;
 int assert (TYPE_1__*) ;
 int assert_se (int) ;
 int clock_boottime_or_monotonic () ;
 scalar_t__ sd_event_now (int ,int ,scalar_t__*) ;

__attribute__((used)) static bool dns_server_grace_period_expired(DnsServer *s) {
        usec_t ts;

        assert(s);
        assert(s->manager);

        if (s->verified_usec == 0)
                return 0;

        assert_se(sd_event_now(s->manager->event, clock_boottime_or_monotonic(), &ts) >= 0);

        if (s->verified_usec + s->features_grace_period_usec > ts)
                return 0;

        s->features_grace_period_usec = MIN(s->features_grace_period_usec * 2, DNS_SERVER_FEATURE_GRACE_PERIOD_MAX_USEC);

        return 1;
}
