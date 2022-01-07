
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vlc_tick_t ;
typedef int uint8_t ;


 int VLC_UNUSED (size_t) ;

void VideoPostrenderDefaultCallback( void* p_video_data, uint8_t* p_pixel_buffer, int width, int height,
                                     int pixel_pitch, size_t size, vlc_tick_t pts )
{
    VLC_UNUSED( p_video_data ); VLC_UNUSED( p_pixel_buffer );
    VLC_UNUSED( width ); VLC_UNUSED( height );
    VLC_UNUSED( pixel_pitch ); VLC_UNUSED( size ); VLC_UNUSED( pts );
}
