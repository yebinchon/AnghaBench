
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void write_int_32( uint8_t *p, uint32_t val )
{
    *p = ( val & 0xFF000000 ) >> 24;
    *( p + 1 ) = ( val & 0xFF0000 ) >> 16;
    *( p + 2 ) = ( val & 0xFF00 ) >> 8;
    *( p + 3 ) = val & 0xFF;
}
