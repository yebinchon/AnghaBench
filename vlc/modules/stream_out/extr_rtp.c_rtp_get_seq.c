
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int lock_sink; int i_seq_sent_next; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

uint16_t rtp_get_seq( sout_stream_id_sys_t *id )
{

    uint16_t seq;

    vlc_mutex_lock( &id->lock_sink );
    seq = id->i_seq_sent_next;
    vlc_mutex_unlock( &id->lock_sink );

    return seq;
}
