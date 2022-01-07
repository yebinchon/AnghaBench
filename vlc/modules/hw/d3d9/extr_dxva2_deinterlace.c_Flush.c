
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int context; } ;
typedef TYPE_2__ filter_sys_t ;


 int FlushDeinterlacing (int *) ;

__attribute__((used)) static void Flush(filter_t *filter)
{
    filter_sys_t *p_sys = filter->p_sys;
    FlushDeinterlacing(&p_sys->context);
}
