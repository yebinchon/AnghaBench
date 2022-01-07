
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int DNS_TYPE_DNSKEY ;
 int DNS_TYPE_DS ;
 int DNS_TYPE_NSEC ;
 int DNS_TYPE_NSEC3 ;
 int DNS_TYPE_NSEC3PARAM ;
 int DNS_TYPE_RRSIG ;
 int IN_SET (int ,int ,int ,int ,int ,int ,int ) ;

bool dns_type_is_dnssec(uint16_t type) {
        return IN_SET(type,
                      DNS_TYPE_DS,
                      DNS_TYPE_DNSKEY,
                      DNS_TYPE_RRSIG,
                      DNS_TYPE_NSEC,
                      DNS_TYPE_NSEC3,
                      DNS_TYPE_NSEC3PARAM);
}
