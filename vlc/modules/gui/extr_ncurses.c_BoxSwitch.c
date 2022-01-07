
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int box_type; scalar_t__ box_idx; scalar_t__ box_start; } ;
typedef TYPE_1__ intf_sys_t ;


 int BOX_NONE ;

__attribute__((used)) static inline void BoxSwitch(intf_sys_t *sys, int box)
{
    sys->box_type = (sys->box_type == box) ? BOX_NONE : box;
    sys->box_start = 0;
    sys->box_idx = 0;
}
