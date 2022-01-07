
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ possible_feature_level; scalar_t__ n_failed_tcp; scalar_t__ packet_rrsig_missing; scalar_t__ packet_bad_opt; } ;
typedef TYPE_1__ DnsServer ;


 scalar_t__ DNS_SERVER_FEATURE_LEVEL_DO ;
 scalar_t__ DNS_SERVER_FEATURE_RETRY_ATTEMPTS ;
 int assert (TYPE_1__*) ;

bool dns_server_dnssec_supported(DnsServer *server) {
        assert(server);



        if (server->possible_feature_level < DNS_SERVER_FEATURE_LEVEL_DO)
                return 0;

        if (server->packet_bad_opt)
                return 0;

        if (server->packet_rrsig_missing)
                return 0;


        if (server->n_failed_tcp >= DNS_SERVER_FEATURE_RETRY_ATTEMPTS)
                return 0;

        return 1;
}
