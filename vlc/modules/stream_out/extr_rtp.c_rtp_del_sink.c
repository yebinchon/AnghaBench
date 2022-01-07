
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sinkc; int lock_sink; TYPE_2__* sinkv; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;
struct TYPE_6__ {int member_0; int rtp_fd; int rtcp; int * member_1; } ;
typedef TYPE_2__ rtp_sink_t ;


 int CloseRTCP (int ) ;
 int TAB_ERASE (int,TYPE_2__*,int) ;
 int net_Close (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void rtp_del_sink( sout_stream_id_sys_t *id, int fd )
{
    rtp_sink_t sink = { fd, ((void*)0) };


    vlc_mutex_lock( &id->lock_sink );
    for( int i = 0; i < id->sinkc; i++ )
    {
        if (id->sinkv[i].rtp_fd == fd)
        {
            sink = id->sinkv[i];
            TAB_ERASE(id->sinkc, id->sinkv, i);
            break;
        }
    }
    vlc_mutex_unlock( &id->lock_sink );

    CloseRTCP( sink.rtcp );
    net_Close( sink.rtp_fd );
}
