
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 unsigned int AOUT_CHAN_LEFT ;
 unsigned int AOUT_CHAN_RIGHT ;

__attribute__((used)) static int WidiHeader( unsigned *pi_rate,
                       unsigned *pi_channels, unsigned *pi_original_channels,
                       unsigned *pi_bits,
                       const uint8_t *p_header )
{
    if ( p_header[0] != 0xa0 || p_header[1] != 0x06 )
        return -1;

    switch( ( p_header[3] & 0x38 ) >> 3 )
    {
    case 0x01:
        *pi_rate = 44100;
        break;
    case 0x02:
        *pi_rate = 48000;
        break;
    default:
        return -1;
    }

    if( p_header[3] >> 6 != 0 )
        return -1;
    else
        *pi_bits = 16;

    *pi_channels = (p_header[3] & 0x7) + 1;

    *pi_original_channels = AOUT_CHAN_LEFT | AOUT_CHAN_RIGHT;

    return 0;
}
