
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int U ;
 int V ;
 int Y1 ;
 int Y2 ;

__attribute__((used)) static void Unpack3( const uint8_t *p_line, unsigned int i_size,
                     uint8_t *p_y, uint8_t *p_u, uint8_t *p_v )
{
    const uint8_t *p_end = p_line + i_size;

    while ( p_line < p_end )
    {
        uint16_t tmp;
        tmp = *p_u;
        tmp += 3 * U;
        *p_u++ = tmp / 4;
        *p_y++ = Y1;
        tmp = *p_v;
        tmp += 3 * V;
        *p_v++ = tmp / 4;
        *p_y++ = Y2;
        p_line += 4;
    }
}
