
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int DNS_TYPE_A6 ;
 int DNS_TYPE_MAILA ;
 int DNS_TYPE_MAILB ;
 int DNS_TYPE_MB ;
 int DNS_TYPE_MD ;
 int DNS_TYPE_MF ;
 int DNS_TYPE_MG ;
 int DNS_TYPE_MINFO ;
 int DNS_TYPE_MR ;
 int DNS_TYPE_NULL ;
 int DNS_TYPE_NXT ;
 int DNS_TYPE_WKS ;
 int IN_SET (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

bool dns_type_is_obsolete(uint16_t type) {
        return IN_SET(type,

                      DNS_TYPE_MD,
                      DNS_TYPE_MF,
                      DNS_TYPE_MAILA,


                      DNS_TYPE_MB,
                      DNS_TYPE_MG,
                      DNS_TYPE_MR,
                      DNS_TYPE_MINFO,
                      DNS_TYPE_MAILB,


                      DNS_TYPE_WKS,


                      DNS_TYPE_A6,


                      DNS_TYPE_NXT,


                      DNS_TYPE_NULL);
}
