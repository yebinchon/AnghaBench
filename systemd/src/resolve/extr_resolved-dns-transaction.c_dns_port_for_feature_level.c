
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int DnsServerFeatureLevel ;


 scalar_t__ DNS_SERVER_FEATURE_LEVEL_IS_TLS (int ) ;

__attribute__((used)) static uint16_t dns_port_for_feature_level(DnsServerFeatureLevel level) {
        return DNS_SERVER_FEATURE_LEVEL_IS_TLS(level) ? 853 : 53;
}
