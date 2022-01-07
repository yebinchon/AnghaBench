
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int stream_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ INT32_MAX ;
 scalar_t__ vlc_stream_Read (int *,void*,size_t) ;

__attribute__((used)) static uint32_t stream_ReadU32( stream_t *s, void *p_read, uint32_t i_toread )
{
    ssize_t i_return = 0;
    if ( i_toread > INT32_MAX )
    {
        i_return = vlc_stream_Read( s, p_read, (size_t) INT32_MAX );
        if ( i_return < INT32_MAX )
            return i_return;
        else
            i_toread -= INT32_MAX;
    }
    i_return += vlc_stream_Read( s, (uint8_t *)p_read + i_return, (size_t) i_toread );
    return i_return;
}
