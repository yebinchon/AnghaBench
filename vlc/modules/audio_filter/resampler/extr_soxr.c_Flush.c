
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int * last_soxr; scalar_t__ i_last_olen; } ;
typedef TYPE_2__ filter_sys_t ;


 int soxr_clear (int *) ;

__attribute__((used)) static void
Flush( filter_t *p_filter )
{
    filter_sys_t *p_sys = p_filter->p_sys;

    if( p_sys->last_soxr )
    {
        soxr_clear( p_sys->last_soxr );
        p_sys->i_last_olen = 0;
        p_sys->last_soxr = ((void*)0);
    }
}
