
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int DNS_TYPE_CNAME ;
 int DNS_TYPE_DNAME ;
 int DNS_TYPE_KEY ;
 int DNS_TYPE_NSEC ;
 int DNS_TYPE_NSEC3 ;
 int DNS_TYPE_NXT ;
 int DNS_TYPE_RRSIG ;
 int DNS_TYPE_SIG ;
 int IN_SET (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ dns_type_is_pseudo (int ) ;

bool dns_type_may_redirect(uint16_t type) {




        if (dns_type_is_pseudo(type))
                return 0;

        return !IN_SET(type,
                       DNS_TYPE_CNAME,
                       DNS_TYPE_DNAME,
                       DNS_TYPE_NSEC3,
                       DNS_TYPE_NSEC,
                       DNS_TYPE_RRSIG,
                       DNS_TYPE_NXT,
                       DNS_TYPE_SIG,
                       DNS_TYPE_KEY);
}
