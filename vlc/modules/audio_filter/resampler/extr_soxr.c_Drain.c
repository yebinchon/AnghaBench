
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_6__ {scalar_t__ i_last_olen; scalar_t__ last_soxr; } ;
typedef TYPE_2__ filter_sys_t ;
typedef int block_t ;


 int * SoXR_Resample (TYPE_1__*,scalar_t__,int *,scalar_t__) ;

__attribute__((used)) static block_t *
Drain( filter_t *p_filter )
{
    filter_sys_t *p_sys = p_filter->p_sys;

    if( p_sys->last_soxr && p_sys->i_last_olen )
        return SoXR_Resample( p_filter, p_sys->last_soxr, ((void*)0),
                              p_sys->i_last_olen );
    else
        return ((void*)0);
}
