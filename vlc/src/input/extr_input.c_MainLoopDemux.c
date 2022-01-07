
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int input_thread_t ;
struct TYPE_5__ {scalar_t__ i_stop; scalar_t__ i_slave; int p_es_out; TYPE_1__* master; } ;
typedef TYPE_2__ input_thread_private_t ;
typedef int demux_t ;
struct TYPE_4__ {int b_eof; scalar_t__ b_title_demux; int * p_demux; } ;


 int DEMUX_GET_TIME ;
 int ERROR_S ;
 int INPUT_UPDATE_TITLE_LIST ;
 int SlaveDemux (int *) ;
 int UpdateGenericFromDemux (int *) ;
 int UpdateTitleListfromDemux (int *) ;
 int UpdateTitleSeekpointFromDemux (int *) ;
 int VLC_DEMUXER_EGENERIC ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ demux_Control (int *,int ,scalar_t__*) ;
 int demux_Demux (int *) ;
 scalar_t__ demux_TestAndClearFlags (int *,int ) ;
 int es_out_Eos (int ) ;
 int input_ChangeState (int *,int ,scalar_t__) ;
 TYPE_2__* input_priv (int *) ;
 int msg_Dbg (int *,char*) ;

__attribute__((used)) static void MainLoopDemux( input_thread_t *p_input, bool *pb_changed )
{
    input_thread_private_t* p_priv = input_priv(p_input);
    demux_t *p_demux = p_priv->master->p_demux;
    int i_ret = VLC_DEMUXER_SUCCESS;

    *pb_changed = 0;

    if( p_priv->i_stop > 0 )
    {
        vlc_tick_t i_time;
        if( demux_Control( p_demux, DEMUX_GET_TIME, &i_time ) )
            i_time = VLC_TICK_INVALID;

        if( p_priv->i_stop <= i_time )
            i_ret = VLC_DEMUXER_EOF;
    }

    if( i_ret == VLC_DEMUXER_SUCCESS )
        i_ret = demux_Demux( p_demux );

    i_ret = i_ret > 0 ? VLC_DEMUXER_SUCCESS : ( i_ret < 0 ? VLC_DEMUXER_EGENERIC : VLC_DEMUXER_EOF);

    if( i_ret == VLC_DEMUXER_SUCCESS )
    {
        if( demux_TestAndClearFlags( p_demux, INPUT_UPDATE_TITLE_LIST ) )
            UpdateTitleListfromDemux( p_input );

        if( p_priv->master->b_title_demux )
        {
            i_ret = UpdateTitleSeekpointFromDemux( p_input );
            *pb_changed = 1;
        }

        UpdateGenericFromDemux( p_input );
    }

    if( i_ret == VLC_DEMUXER_EOF )
    {
        msg_Dbg( p_input, "EOF reached" );
        p_priv->master->b_eof = 1;
        es_out_Eos(p_priv->p_es_out);
    }
    else if( i_ret == VLC_DEMUXER_EGENERIC )
    {
        input_ChangeState( p_input, ERROR_S, VLC_TICK_INVALID );
    }
    else if( p_priv->i_slave > 0 )
        SlaveDemux( p_input );
}
