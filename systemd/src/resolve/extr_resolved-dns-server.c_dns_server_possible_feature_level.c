
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ possible_feature_level; int packet_bad_opt; int packet_rrsig_missing; scalar_t__ verified_feature_level; scalar_t__ n_failed_tcp; scalar_t__ n_failed_tls; scalar_t__ n_failed_udp; scalar_t__ packet_truncated; } ;
typedef scalar_t__ DnsServerFeatureLevel ;
typedef TYPE_1__ DnsServer ;


 scalar_t__ DNSSEC_NO ;
 scalar_t__ DNSSEC_YES ;
 scalar_t__ DNS_OVER_TLS_NO ;
 scalar_t__ DNS_OVER_TLS_YES ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_DO ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_EDNS0 ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_IS_TLS (scalar_t__) ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_LARGE ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_TCP ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_TLS_DO ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_UDP ;
 scalar_t__ DNS_SERVER_FEATURE_RETRY_ATTEMPTS ;
 int assert (TYPE_1__*) ;
 int dns_server_feature_level_to_string (scalar_t__) ;
 int dns_server_flush_cache (TYPE_1__*) ;
 scalar_t__ dns_server_get_dns_over_tls_mode (TYPE_1__*) ;
 scalar_t__ dns_server_get_dnssec_mode (TYPE_1__*) ;
 scalar_t__ dns_server_grace_period_expired (TYPE_1__*) ;
 int dns_server_reset_counters (TYPE_1__*) ;
 int dns_server_string (TYPE_1__*) ;
 int log_debug (char*) ;
 int log_info (char*,int ,int ) ;
 int log_warning (char*,int ,int ) ;

DnsServerFeatureLevel dns_server_possible_feature_level(DnsServer *s) {
        DnsServerFeatureLevel best;

        assert(s);



        if (dns_server_get_dnssec_mode(s) != DNSSEC_NO)
                best = dns_server_get_dns_over_tls_mode(s) == DNS_OVER_TLS_NO ?
                        DNS_SERVER_FEATURE_LEVEL_LARGE :
                        DNS_SERVER_FEATURE_LEVEL_TLS_DO;
        else
                best = dns_server_get_dns_over_tls_mode(s) == DNS_OVER_TLS_NO ?
                        DNS_SERVER_FEATURE_LEVEL_EDNS0 :
                        DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN;



        if (s->possible_feature_level > best)
                s->possible_feature_level = best;

        if (s->possible_feature_level < best && dns_server_grace_period_expired(s)) {

                s->possible_feature_level = best;

                dns_server_reset_counters(s);

                s->packet_bad_opt = 0;
                s->packet_rrsig_missing = 0;

                log_info("Grace period over, resuming full feature set (%s) for DNS server %s.",
                         dns_server_feature_level_to_string(s->possible_feature_level),
                         dns_server_string(s));

                dns_server_flush_cache(s);

        } else if (s->possible_feature_level <= s->verified_feature_level)
                s->possible_feature_level = s->verified_feature_level;
        else {
                DnsServerFeatureLevel p = s->possible_feature_level;

                if (s->n_failed_tcp >= DNS_SERVER_FEATURE_RETRY_ATTEMPTS &&
                    s->possible_feature_level == DNS_SERVER_FEATURE_LEVEL_TCP) {



                        log_debug("Reached maximum number of failed TCP connection attempts, trying UDP again...");
                        s->possible_feature_level = DNS_SERVER_FEATURE_LEVEL_UDP;
                } else if (s->n_failed_tls > 0 &&
                           DNS_SERVER_FEATURE_LEVEL_IS_TLS(s->possible_feature_level) && dns_server_get_dns_over_tls_mode(s) != DNS_OVER_TLS_YES) {




                        log_debug("Server doesn't support DNS-over-TLS, downgrading protocol...");
                        s->possible_feature_level--;
                } else if (s->packet_bad_opt &&
                           s->possible_feature_level >= DNS_SERVER_FEATURE_LEVEL_EDNS0) {






                        log_debug("Server doesn't support EDNS(0) properly, downgrading feature level...");
                        s->possible_feature_level = DNS_SERVER_FEATURE_LEVEL_UDP;

                } else if (s->packet_rrsig_missing &&
                           s->possible_feature_level >= DNS_SERVER_FEATURE_LEVEL_DO) {






                        log_debug("Detected server responses lack RRSIG records, downgrading feature level...");
                        s->possible_feature_level = DNS_SERVER_FEATURE_LEVEL_IS_TLS(s->possible_feature_level) ? DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN : DNS_SERVER_FEATURE_LEVEL_EDNS0;

                } else if (s->n_failed_udp >= DNS_SERVER_FEATURE_RETRY_ATTEMPTS &&
                           s->possible_feature_level >= (dns_server_get_dnssec_mode(s) == DNSSEC_YES ? DNS_SERVER_FEATURE_LEVEL_LARGE : DNS_SERVER_FEATURE_LEVEL_UDP)) {
                        log_debug("Lost too many UDP packets, downgrading feature level...");
                        s->possible_feature_level--;

                } else if (s->n_failed_tcp >= DNS_SERVER_FEATURE_RETRY_ATTEMPTS &&
                           s->packet_truncated &&
                           s->possible_feature_level > (dns_server_get_dnssec_mode(s) == DNSSEC_YES ? DNS_SERVER_FEATURE_LEVEL_LARGE : DNS_SERVER_FEATURE_LEVEL_UDP)) {







                        log_debug("Got too many failed TCP connection failures and truncated UDP packets, downgrading feature level...");
                        s->possible_feature_level--;
                }

                if (p != s->possible_feature_level) {


                        dns_server_reset_counters(s);

                        log_warning("Using degraded feature set (%s) for DNS server %s.",
                                    dns_server_feature_level_to_string(s->possible_feature_level),
                                    dns_server_string(s));
                }
        }

        return s->possible_feature_level;
}
