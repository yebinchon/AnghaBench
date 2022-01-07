
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ verified_feature_level; int verified_usec; TYPE_1__* manager; } ;
struct TYPE_6__ {int event; } ;
typedef scalar_t__ DnsServerFeatureLevel ;
typedef TYPE_2__ DnsServer ;


 int assert (TYPE_2__*) ;
 int assert_se (int) ;
 int clock_boottime_or_monotonic () ;
 int dns_server_feature_level_to_string (scalar_t__) ;
 int dns_server_string (TYPE_2__*) ;
 int log_debug (char*,int ,int ) ;
 scalar_t__ sd_event_now (int ,int ,int *) ;

__attribute__((used)) static void dns_server_verified(DnsServer *s, DnsServerFeatureLevel level) {
        assert(s);

        if (s->verified_feature_level > level)
                return;

        if (s->verified_feature_level != level) {
                log_debug("Verified we get a response at feature level %s from DNS server %s.",
                          dns_server_feature_level_to_string(level),
                          dns_server_string(s));
                s->verified_feature_level = level;
        }

        assert_se(sd_event_now(s->manager->event, clock_boottime_or_monotonic(), &s->verified_usec) >= 0);
}
