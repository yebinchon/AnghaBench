
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_6__ {int context; } ;
typedef TYPE_2__ filter_sys_t ;


 int FlushDeinterlacing (int *) ;
 int IVTCClearState (TYPE_1__*) ;

void Flush( filter_t *p_filter )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    FlushDeinterlacing(&p_sys->context);

    IVTCClearState( p_filter );
}
