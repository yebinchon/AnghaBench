
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static unsigned int dca_get_samplerate( uint8_t i_sfreq )
{

    const unsigned int p_dca_samplerates[16] = {
        0, 8000, 16000, 32000, 0, 0, 11025, 22050, 44100, 0, 0,
        12000, 24000, 48000, 96000, 192000
    };

    if( i_sfreq >= 16 )
        return 0;
    return p_dca_samplerates[i_sfreq];
}
