
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int A0 ;
 int A1 ;
 int A2 ;
 int A3 ;

__attribute__((used)) static void UnpackAnc( const uint8_t *p_anc, unsigned int i_size,
                       uint16_t *p_dest )
{
    const uint8_t *p_end = p_anc + i_size;

    while ( p_anc <= p_end - 5 )
    {
        *p_dest++ = A0;
        *p_dest++ = A1;
        *p_dest++ = A2;
        *p_dest++ = A3;
        p_anc += 5;
    }
}
