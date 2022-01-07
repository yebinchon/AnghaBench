
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int DNS_TYPE_CAA ;
 int DNS_TYPE_CDNSKEY ;
 int DNS_TYPE_CERT ;
 int DNS_TYPE_DNSKEY ;
 int DNS_TYPE_DS ;
 int DNS_TYPE_IPSECKEY ;
 int DNS_TYPE_OPENPGPKEY ;
 int DNS_TYPE_SSHFP ;
 int DNS_TYPE_TLSA ;
 int IN_SET (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

bool dns_type_needs_authentication(uint16_t type) {




        return IN_SET(type,
                      DNS_TYPE_CERT,
                      DNS_TYPE_SSHFP,
                      DNS_TYPE_IPSECKEY,
                      DNS_TYPE_DS,
                      DNS_TYPE_DNSKEY,
                      DNS_TYPE_TLSA,
                      DNS_TYPE_CDNSKEY,
                      DNS_TYPE_OPENPGPKEY,
                      DNS_TYPE_CAA);
}
