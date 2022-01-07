
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int VLC_UNUSED (size_t) ;

void VideoPrerenderDefaultCallback( void* p_video_data, uint8_t** pp_pixel_buffer, size_t size )
{
    VLC_UNUSED( p_video_data ); VLC_UNUSED( pp_pixel_buffer ); VLC_UNUSED( size );
}
