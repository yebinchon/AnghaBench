
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_a52_header_t ;
typedef int uint8_t ;
typedef int uint32_t ;
 int VLC_A52_MIN_HEADER_SIZE ;
 int VLC_EGENERIC ;
 int vlc_a52_header_ParseAc3 (int *,int const*,int const*,unsigned int const*) ;
 int vlc_a52_header_ParseEac3 (int *,int const*,int const*,unsigned int const*) ;

__attribute__((used)) static inline int vlc_a52_header_Parse( vlc_a52_header_t *p_header,
                                        const uint8_t *p_buffer, int i_buffer )
{
    static const uint32_t p_acmod[8] = {
        135,
        129,
        135,
        134,
        130 | 128,
        130 | 131,
        133,
        132,
    };
    static const unsigned pi_fscod_samplerates[] = {
        48000, 44100, 32000
    };

    if( i_buffer < VLC_A52_MIN_HEADER_SIZE )
        return VLC_EGENERIC;


    if( p_buffer[0] != 0x0b || p_buffer[1] != 0x77 )
        return VLC_EGENERIC;


    const int bsid = p_buffer[5] >> 3;


    if( bsid <= 10 )
        return vlc_a52_header_ParseAc3( p_header, p_buffer,
                                        p_acmod, pi_fscod_samplerates );
    else if( bsid <= 16 )
        return vlc_a52_header_ParseEac3( p_header, p_buffer,
                                         p_acmod, pi_fscod_samplerates );
    else
        return VLC_EGENERIC;
}
