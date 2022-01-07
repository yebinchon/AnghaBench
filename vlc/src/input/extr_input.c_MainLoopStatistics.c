
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef double vlc_tick_t ;
struct input_stats_t {int dummy; } ;
typedef int input_thread_t ;
struct TYPE_7__ {double normal_time; TYPE_2__* p_item; int * stats; int p_es_out; TYPE_1__* master; } ;
typedef TYPE_3__ input_thread_private_t ;
struct TYPE_6__ {int lock; struct input_stats_t* p_stats; } ;
struct TYPE_5__ {int p_demux; } ;


 int DEMUX_GET_LENGTH ;
 int DEMUX_GET_NORMAL_TIME ;
 int DEMUX_GET_POSITION ;
 int DEMUX_GET_TIME ;
 double VLC_TICK_INVALID ;
 scalar_t__ demux_Control (int ,int ,double*) ;
 int es_out_SetTimes (int ,double,double,double,double) ;
 int input_SendEventStatistics (int *,struct input_stats_t*) ;
 TYPE_3__* input_priv (int *) ;
 int input_stats_Compute (int *,struct input_stats_t*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void MainLoopStatistics( input_thread_t *p_input )
{
    input_thread_private_t *priv = input_priv(p_input);
    double f_position = 0.0;
    vlc_tick_t i_time;
    vlc_tick_t i_length;


    if( demux_Control( priv->master->p_demux,
                       DEMUX_GET_POSITION, &f_position ) )
        f_position = 0.0;

    if( demux_Control( priv->master->p_demux, DEMUX_GET_TIME, &i_time ) )
        i_time = VLC_TICK_INVALID;

    if( demux_Control( priv->master->p_demux, DEMUX_GET_LENGTH, &i_length ) )
        i_length = VLC_TICK_INVALID;



    demux_Control( priv->master->p_demux, DEMUX_GET_NORMAL_TIME, &priv->normal_time );

    es_out_SetTimes( priv->p_es_out, f_position, i_time, priv->normal_time,
                     i_length );

    struct input_stats_t new_stats;
    if( priv->stats != ((void*)0) )
        input_stats_Compute( priv->stats, &new_stats );

    vlc_mutex_lock( &priv->p_item->lock );
    if( priv->stats != ((void*)0) )
        *priv->p_item->p_stats = new_stats;
    vlc_mutex_unlock( &priv->p_item->lock );

    input_SendEventStatistics( p_input, &new_stats );
}
