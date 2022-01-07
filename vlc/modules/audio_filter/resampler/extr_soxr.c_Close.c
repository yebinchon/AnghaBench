
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {scalar_t__ vr_soxr; scalar_t__ soxr; } ;
typedef TYPE_2__ filter_sys_t ;


 int free (TYPE_2__*) ;
 int soxr_delete (scalar_t__) ;

__attribute__((used)) static void
Close( vlc_object_t *p_obj )
{
    filter_t *p_filter = (filter_t *)p_obj;
    filter_sys_t *p_sys = p_filter->p_sys;

    soxr_delete( p_sys->soxr );
    if( p_sys->vr_soxr )
        soxr_delete( p_sys->vr_soxr );

    free( p_sys );
}
