
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {scalar_t__ es; int fmt; scalar_t__ b_configured; } ;
typedef TYPE_2__ ps_track_t ;
struct TYPE_8__ {int out; TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_6__ {int lock; int timer; scalar_t__ b_created; } ;
struct TYPE_9__ {int i_title; int dvdnav; int * title; TYPE_2__* tk; int event_lock; TYPE_1__ still; } ;
typedef TYPE_4__ demux_sys_t ;


 int PS_TK_COUNT ;
 int TAB_CLEAN (int,int *) ;
 int dvdnav_close (int ) ;
 int es_format_Clean (int *) ;
 int es_out_Del (int ,scalar_t__) ;
 int free (TYPE_4__*) ;
 int vlc_input_title_Delete (int ) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_timer_destroy (int ) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;


    if( p_sys->still.b_created )
        vlc_timer_destroy( p_sys->still.timer );
    vlc_mutex_destroy( &p_sys->still.lock );
    vlc_mutex_destroy( &p_sys->event_lock );

    for( int i = 0; i < PS_TK_COUNT; i++ )
    {
        ps_track_t *tk = &p_sys->tk[i];
        if( tk->b_configured )
        {
            es_format_Clean( &tk->fmt );
            if( tk->es ) es_out_Del( p_demux->out, tk->es );
        }
    }


    for( int i = 0; i < p_sys->i_title; i++ )
        vlc_input_title_Delete( p_sys->title[i] );
    TAB_CLEAN( p_sys->i_title, p_sys->title );

    dvdnav_close( p_sys->dvdnav );
    free( p_sys );
}
