
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

__attribute__((used)) static void Unpack2( const uint8_t *p_line, unsigned int i_size,
                     uint8_t *p_y, uint8_t *p_u, uint8_t *p_v )
{
    const uint8_t *p_end = p_line + i_size;

    while ( p_line < p_end )
    {
        uint16_t tmp;
        tmp = 3 * *p_u;
        tmp += (U + 2) / 4;
        *p_u++ = tmp / 4;
        *p_y++ = (Y1 + 2) / 4;
        tmp = 3 * *p_v;
        tmp += (V + 2) / 4;
        *p_v++ = tmp / 4;
        *p_y++ = (Y2 + 2) / 4;
        p_line += 5;
    }
}
