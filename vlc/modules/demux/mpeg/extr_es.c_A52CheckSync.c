
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int i_samples; int i_size; int b_eac3; } ;
typedef TYPE_1__ vlc_a52_header_t ;
typedef int uint8_t ;


 int VLC_A52_MIN_HEADER_SIZE ;
 int VLC_EGENERIC ;
 int swab (int const*,int*,int) ;
 scalar_t__ vlc_a52_header_Parse (TYPE_1__*,int const*,int) ;

__attribute__((used)) static int A52CheckSync( const uint8_t *p_peek, bool *p_big_endian, unsigned *pi_samples, bool b_eac3 )
{
    vlc_a52_header_t header;
    uint8_t p_tmp[VLC_A52_MIN_HEADER_SIZE];

    *p_big_endian = p_peek[0] == 0x0b && p_peek[1] == 0x77;
    if( !*p_big_endian )
    {
        swab( p_peek, p_tmp, VLC_A52_MIN_HEADER_SIZE );
        p_peek = p_tmp;
    }

    if( vlc_a52_header_Parse( &header, p_peek, VLC_A52_MIN_HEADER_SIZE ) )
        return VLC_EGENERIC;

    if( !header.b_eac3 != !b_eac3 )
        return VLC_EGENERIC;
    if( pi_samples )
        *pi_samples = header.i_samples;
    return header.i_size;
}
