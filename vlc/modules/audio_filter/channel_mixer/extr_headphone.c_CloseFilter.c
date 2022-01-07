
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {struct TYPE_5__* p_atomic_operations; struct TYPE_5__* p_overflow_buffer; } ;
typedef TYPE_2__ filter_sys_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void CloseFilter( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;

    free( p_sys->p_overflow_buffer );
    free( p_sys->p_atomic_operations );
    free( p_sys );
}
