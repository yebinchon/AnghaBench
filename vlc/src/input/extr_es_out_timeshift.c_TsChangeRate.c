
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_rate_date; float rate; float rate_source; int lock; int p_out; scalar_t__ i_rate_delay; int i_cmd_delay; } ;
typedef TYPE_1__ ts_thread_t ;


 int es_out_SetRate (int ,float,float) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int TsChangeRate( ts_thread_t *p_ts, float src_rate, float rate )
{
    int i_ret;

    vlc_mutex_lock( &p_ts->lock );
    p_ts->i_cmd_delay += p_ts->i_rate_delay;

    p_ts->i_rate_date = -1;
    p_ts->i_rate_delay = 0;
    p_ts->rate = rate;
    p_ts->rate_source = src_rate;

    i_ret = es_out_SetRate( p_ts->p_out, rate, rate );
    vlc_mutex_unlock( &p_ts->lock );

    return i_ret;
}
