
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int components_size; int h16_count; int elision_size; scalar_t__ elision; scalar_t__ ipv4; } ;
typedef TYPE_1__ ipv6_address ;



__attribute__((used)) static void compute_ipv6_comps_size(ipv6_address *address) {
    address->components_size = address->h16_count * 2;

    if(address->ipv4)

        address->components_size += 4;

    if(address->elision) {



        address->elision_size = 16 - address->components_size;
        if(address->elision_size < 2)
            address->elision_size = 2;
    } else
        address->elision_size = 0;
}
