
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int DNS_TYPE_DNSKEY ;
 int DNS_TYPE_NS ;
 int DNS_TYPE_NSEC3PARAM ;
 int DNS_TYPE_SOA ;
 int IN_SET (int ,int ,int ,int ,int ) ;

bool dns_type_apex_only(uint16_t type) {



        return IN_SET(type,
                      DNS_TYPE_SOA,
                      DNS_TYPE_NS,
                      DNS_TYPE_DNSKEY,
                      DNS_TYPE_NSEC3PARAM);
}
