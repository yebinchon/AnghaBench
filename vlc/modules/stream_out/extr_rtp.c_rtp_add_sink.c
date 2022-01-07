
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int lock_sink; int i_seq_sent_next; int sinkv; int sinkc; int p_stream; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;
struct TYPE_6__ {int member_0; int * rtcp; int * member_1; } ;
typedef TYPE_2__ rtp_sink_t ;


 int IPPROTO_UDP ;
 int * OpenRTCP (int ,int,int ,int) ;
 int TAB_APPEND (int ,int ,TYPE_2__) ;
 int VLC_OBJECT (int ) ;
 int VLC_SUCCESS ;
 int msg_Err (int ,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int rtp_add_sink( sout_stream_id_sys_t *id, int fd, bool rtcp_mux, uint16_t *seq )
{
    rtp_sink_t sink = { fd, ((void*)0) };
    sink.rtcp = OpenRTCP( VLC_OBJECT( id->p_stream ), fd, IPPROTO_UDP,
                          rtcp_mux );
    if( sink.rtcp == ((void*)0) )
        msg_Err( id->p_stream, "RTCP failed!" );

    vlc_mutex_lock( &id->lock_sink );
    TAB_APPEND(id->sinkc, id->sinkv, sink);
    if( seq != ((void*)0) )
        *seq = id->i_seq_sent_next;
    vlc_mutex_unlock( &id->lock_sink );
    return VLC_SUCCESS;
}
