
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int **** vlc_tick_t ;
typedef int input_thread_t ;
struct TYPE_6__ {int i_slave; float slave_subs_rate; int p_es_out; TYPE_3__** slave; TYPE_1__* master; } ;
typedef TYPE_2__ input_thread_private_t ;
struct TYPE_7__ {int b_eof; float sub_rate; int p_demux; scalar_t__ b_can_rate_control; scalar_t__ b_slave_sub; } ;
typedef TYPE_3__ input_source_t ;
struct TYPE_5__ {int p_demux; } ;


 int DEMUX_GET_TIME ;
 int DEMUX_SET_NEXT_DEMUX_TIME ;
 int DEMUX_SET_RATE ;
 int ES_OUT_RESET_PCR ;
 scalar_t__ demux_Control (int ,int ,float*) ;
 int demux_Demux (int ) ;
 int es_out_Control (int ,int ) ;
 TYPE_2__* input_priv (int *) ;
 int msg_Dbg (int *,char*,int) ;
 int msg_Err (int *,char*,...) ;

__attribute__((used)) static void SlaveDemux( input_thread_t *p_input )
{
    input_thread_private_t *priv = input_priv(p_input);
    vlc_tick_t i_time;
    int i;

    if( demux_Control( input_priv(p_input)->master->p_demux, DEMUX_GET_TIME, &i_time ) )
    {
        msg_Err( p_input, "demux doesn't like DEMUX_GET_TIME" );
        return;
    }

    for( i = 0; i < input_priv(p_input)->i_slave; i++ )
    {
        input_source_t *in = input_priv(p_input)->slave[i];
        int i_ret;

        if( in->b_eof )
            continue;

        if( priv->slave_subs_rate != in->sub_rate )
        {
            if( in->b_slave_sub && in->b_can_rate_control )
            {
                if( in->sub_rate != 0 )
                    es_out_Control( priv->p_es_out, ES_OUT_RESET_PCR );
                float new_rate = priv->slave_subs_rate;
                demux_Control( in->p_demux, DEMUX_SET_RATE, &new_rate );
            }
            in->sub_rate = priv->slave_subs_rate;
        }



        if( demux_Control( in->p_demux, DEMUX_SET_NEXT_DEMUX_TIME, i_time ) )
        {
            for( ;; )
            {
                vlc_tick_t i_stime;
                if( demux_Control( in->p_demux, DEMUX_GET_TIME, &i_stime ) )
                {
                    msg_Err( p_input, "slave[%d] doesn't like "
                             "DEMUX_GET_TIME -> EOF", i );
                    i_ret = 0;
                    break;
                }

                if( i_stime >= i_time )
                {
                    i_ret = 1;
                    break;
                }

                if( ( i_ret = demux_Demux( in->p_demux ) ) <= 0 )
                    break;
            }
        }
        else
        {
            i_ret = demux_Demux( in->p_demux );
        }

        if( i_ret <= 0 )
        {
            msg_Dbg( p_input, "slave %d EOF", i );
            in->b_eof = 1;
        }
    }
}
