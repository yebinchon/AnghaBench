
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sout; } ;
typedef TYPE_1__ sout_packetizer_input_t ;
struct TYPE_5__ {int lock; int p_stream; } ;
typedef TYPE_2__ sout_instance_t ;


 int SOUT_STREAM_EMPTY ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ sout_StreamControl (int ,int ,int*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

bool sout_InputIsEmpty( sout_packetizer_input_t *p_input )
{
    sout_instance_t *p_sout = p_input->p_sout;
    bool b;

    vlc_mutex_lock( &p_sout->lock );
    if( sout_StreamControl( p_sout->p_stream, SOUT_STREAM_EMPTY, &b ) != VLC_SUCCESS )
        b = 1;
    vlc_mutex_unlock( &p_sout->lock );
    return b;
}
