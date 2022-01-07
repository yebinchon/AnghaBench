
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int VLC_UNUSED (size_t) ;

void AudioPrerenderDefaultCallback( void* p_audio_data, uint8_t** pp_pcm_buffer, size_t size )
{
    VLC_UNUSED( p_audio_data ); VLC_UNUSED( pp_pcm_buffer ); VLC_UNUSED( size );
}
