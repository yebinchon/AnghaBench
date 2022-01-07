
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int DNS_TYPE_AXFR ;
 int DNS_TYPE_IXFR ;
 int IN_SET (int ,int ,int ) ;

bool dns_type_is_zone_transer(uint16_t type) {



        return IN_SET(type,
                      DNS_TYPE_AXFR,
                      DNS_TYPE_IXFR);
}
