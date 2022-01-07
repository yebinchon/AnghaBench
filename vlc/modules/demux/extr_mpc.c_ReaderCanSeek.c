
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mpc_bool_t ;
struct TYPE_2__ {int s; } ;
typedef TYPE_1__ demux_t ;


 int STREAM_CAN_SEEK ;
 int vlc_stream_Control (int ,int ,int*) ;

__attribute__((used)) static mpc_bool_t ReaderCanSeek( void *p_private )
{
    demux_t *p_demux = (demux_t*)p_private;
    bool b_canseek;

    vlc_stream_Control( p_demux->s, STREAM_CAN_SEEK, &b_canseek );
    return b_canseek;
}
