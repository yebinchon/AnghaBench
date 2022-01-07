
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int p_sys; int s; } ;
typedef TYPE_1__ stream_t ;


 int RemainFlush (int ) ;
 int VLC_SUCCESS ;
 int vlc_stream_Seek (int ,int ) ;

__attribute__((used)) static int Seek( stream_t *p_stream, uint64_t i_pos )
{
    int i_ret = vlc_stream_Seek( p_stream->s, i_pos );
    if ( i_ret == VLC_SUCCESS )
        RemainFlush( p_stream->p_sys );
    return i_ret;
}
