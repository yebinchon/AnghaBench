
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int E2 (int,int,int) ;

__attribute__((used)) static void XdsStringUtf8( char dst[2*32+1], const uint8_t *p_src, size_t i_src )
{
    size_t i_dst = 0;
    for( size_t i = 0; i < i_src; i++ )
    {
        switch( p_src[i] )
        {

        case 0x2a: dst[i_dst++] = 0xc3; dst[i_dst++] = 0xa1; break;
        case 0x5c: dst[i_dst++] = 0xc3; dst[i_dst++] = 0xa9; break;
        case 0x5e: dst[i_dst++] = 0xc3; dst[i_dst++] = 0xad; break;
        case 0x5f: dst[i_dst++] = 0xc3; dst[i_dst++] = 0xb3; break;
        case 0x60: dst[i_dst++] = 0xc3; dst[i_dst++] = 0xba; break;
        case 0x7b: dst[i_dst++] = 0xc3; dst[i_dst++] = 0xa7; break;
        case 0x7c: dst[i_dst++] = 0xc3; dst[i_dst++] = 0xb7; break;
        case 0x7d: dst[i_dst++] = 0xc3; dst[i_dst++] = 0x91; break;
        case 0x7e: dst[i_dst++] = 0xc3; dst[i_dst++] = 0xb1; break;

        default:
            dst[i_dst++] = p_src[i];
            break;
        }
    }
    dst[i_dst++] = '\0';
}
