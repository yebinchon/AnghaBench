
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {scalar_t__ p_previous_pic; } ;
typedef TYPE_2__ filter_sys_t ;


 int free (TYPE_2__*) ;
 int picture_Release (scalar_t__) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t*)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;
    if( p_sys->p_previous_pic )
        picture_Release( p_sys->p_previous_pic );
    free( p_sys );
}
