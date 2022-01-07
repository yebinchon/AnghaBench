
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;



 int EINVAL ;

int dns_type_to_af(uint16_t t) {
        switch (t) {

        case 130:
                return AF_INET;

        case 129:
                return AF_INET6;

        case 128:
                return AF_UNSPEC;

        default:
                return -EINVAL;
        }
}
