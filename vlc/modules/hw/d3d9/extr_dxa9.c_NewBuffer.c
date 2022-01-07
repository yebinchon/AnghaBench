
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
struct TYPE_6__ {TYPE_3__* p_sys; TYPE_1__ owner; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_7__ {int * staging; } ;
typedef TYPE_3__ filter_sys_t ;



__attribute__((used)) static picture_t *NewBuffer(filter_t *p_filter)
{
    filter_t *p_parent = p_filter->owner.sys;
    filter_sys_t *p_sys = p_parent->p_sys;
    return p_sys->staging;
}
