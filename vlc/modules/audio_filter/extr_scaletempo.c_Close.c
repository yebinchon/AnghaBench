
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {struct TYPE_5__* table_window; struct TYPE_5__* buf_pre_corr; struct TYPE_5__* table_blend; struct TYPE_5__* buf_overlap; struct TYPE_5__* buf_queue; } ;
typedef TYPE_2__ filter_sys_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;
    free( p_sys->buf_queue );
    free( p_sys->buf_overlap );
    free( p_sys->table_blend );
    free( p_sys->buf_pre_corr );
    free( p_sys->table_window );
    free( p_sys );
}
