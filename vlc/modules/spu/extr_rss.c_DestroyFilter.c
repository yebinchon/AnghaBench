
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int i_feeds; int p_feeds; struct TYPE_5__* psz_marquee; int p_style; int lock; int timer; } ;
typedef TYPE_2__ filter_sys_t ;


 int FreeRSS (int ,int ) ;
 int free (TYPE_2__*) ;
 int text_style_Delete (int ) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_timer_destroy (int ) ;

__attribute__((used)) static void DestroyFilter( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;

    vlc_timer_destroy( p_sys->timer );
    vlc_mutex_destroy( &p_sys->lock );

    text_style_Delete( p_sys->p_style );
    free( p_sys->psz_marquee );
    FreeRSS( p_sys->p_feeds, p_sys->i_feeds );
    free( p_sys );
}
