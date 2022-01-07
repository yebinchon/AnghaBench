
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;







 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int ps_pkt_size( const uint8_t *p, int i_peek )
{
    if( unlikely(i_peek < 4) )
        return -1;

    switch( p[3] )
    {
        case 131:
            return 4;

        case 129:
            if( i_peek > 4 )
            {
                if( i_peek >= 14 && (p[4] >> 6) == 0x01 )
                    return 14 + (p[13]&0x07);
                else if( i_peek >= 12 && (p[4] >> 4) == 0x02 )
                    return 12;
            }
            break;

        case 128:
        case 130:
        case 132:
        default:
            if( i_peek >= 6 )
                return 6 + ((p[4]<<8) | p[5] );
    }
    return -1;
}
