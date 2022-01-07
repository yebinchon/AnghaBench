
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * n_dnssec_verdict; } ;
typedef TYPE_1__ Manager ;
typedef size_t DnssecVerdict ;
typedef int DnsResourceKey ;


 scalar_t__ DEBUG_LOGGING ;
 int DNS_RESOURCE_KEY_STRING_MAX ;
 size_t _DNSSEC_VERDICT_MAX ;
 int assert (int) ;
 int dns_resource_key_to_string (int const*,char*,int) ;
 int dnssec_verdict_to_string (size_t) ;
 int log_debug (char*,int ,int ) ;

void manager_dnssec_verdict(Manager *m, DnssecVerdict verdict, const DnsResourceKey *key) {

        assert(verdict >= 0);
        assert(verdict < _DNSSEC_VERDICT_MAX);

        if (DEBUG_LOGGING) {
                char s[DNS_RESOURCE_KEY_STRING_MAX];

                log_debug("Found verdict for lookup %s: %s",
                          dns_resource_key_to_string(key, s, sizeof s),
                          dnssec_verdict_to_string(verdict));
        }

        m->n_dnssec_verdict[verdict]++;
}
