
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int input_thread_t ;
struct TYPE_5__ {int b_eof; int p_demux; } ;
typedef TYPE_2__ input_source_t ;
struct TYPE_6__ {int i_slave; TYPE_2__** slave; TYPE_1__* master; } ;
struct TYPE_4__ {int p_demux; } ;


 int DEMUX_GET_TIME ;
 int DEMUX_SET_TIME ;
 scalar_t__ demux_Control (int ,int ,int ,...) ;
 TYPE_3__* input_priv (int *) ;
 int msg_Err (int *,char*,...) ;

__attribute__((used)) static void SlaveSeek( input_thread_t *p_input )
{
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

        if( demux_Control( in->p_demux, DEMUX_SET_TIME, i_time, 1 ) )
        {
            if( !in->b_eof )
                msg_Err( p_input, "seek failed for slave %d -> EOF", i );
            in->b_eof = 1;
        }
        else
        {
            in->b_eof = 0;
        }
    }
}
