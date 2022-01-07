
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int s; } ;
typedef TYPE_1__ demux_t ;


 int vlc_stream_Read (int ,int *,int) ;

__attribute__((used)) static int IORead( void *opaque, uint8_t *buf, int buf_size )
{
    demux_t *p_demux = opaque;
    if( buf_size < 0 ) return -1;
    int i_ret = vlc_stream_Read( p_demux->s, buf, buf_size );
    return i_ret >= 0 ? i_ret : -1;
}
