
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vlc_tick_t ;
typedef int uint8_t ;


 int VLC_UNUSED (size_t) ;

void AudioPostrenderDefaultCallback( void* p_audio_data, uint8_t* p_pcm_buffer, unsigned int channels,
                                     unsigned int rate, unsigned int nb_samples, unsigned int bits_per_sample,
                                     size_t size, vlc_tick_t pts )
{
    VLC_UNUSED( p_audio_data ); VLC_UNUSED( p_pcm_buffer );
    VLC_UNUSED( channels ); VLC_UNUSED( rate ); VLC_UNUSED( nb_samples );
    VLC_UNUSED( bits_per_sample ); VLC_UNUSED( size ); VLC_UNUSED( pts );
}
