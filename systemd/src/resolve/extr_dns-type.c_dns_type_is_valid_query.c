
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int DNS_TYPE_OPT ;
 int DNS_TYPE_RRSIG ;
 int DNS_TYPE_TKEY ;
 int DNS_TYPE_TSIG ;
 int IN_SET (int ,int ,int ,int ,int ,int ) ;

bool dns_type_is_valid_query(uint16_t type) {



        return !IN_SET(type,
                       0,
                       DNS_TYPE_OPT,
                       DNS_TYPE_TSIG,
                       DNS_TYPE_TKEY,





                       DNS_TYPE_RRSIG);
}
