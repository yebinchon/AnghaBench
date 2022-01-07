
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int DNS_TYPE_DNAME ;
 int DNS_TYPE_NSEC3 ;
 int DNS_TYPE_SOA ;
 int IN_SET (int ,int ,int ,int ) ;
 scalar_t__ dns_type_is_pseudo (int ) ;

bool dns_type_may_wildcard(uint16_t type) {



        if (dns_type_is_pseudo(type))
                return 0;

        return !IN_SET(type,
                       DNS_TYPE_NSEC3,
                       DNS_TYPE_SOA,


                       DNS_TYPE_DNAME);
}
