
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gw; int family; int section; } ;
typedef TYPE_1__ NextHop ;


 int EINVAL ;
 scalar_t__ in_addr_is_null (int ,int *) ;
 scalar_t__ section_is_invalid (int ) ;

int nexthop_section_verify(NextHop *nh) {
        if (section_is_invalid(nh->section))
                return -EINVAL;

        if (in_addr_is_null(nh->family, &nh->gw) < 0)
                return -EINVAL;

        return 0;
}
