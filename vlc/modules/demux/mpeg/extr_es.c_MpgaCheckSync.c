
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int GetDWBE (int const*) ;

__attribute__((used)) static int MpgaCheckSync( const uint8_t *p_peek )
{
    uint32_t h = GetDWBE( p_peek );

    if( ((( h >> 21 )&0x07FF) != 0x07FF )
        || (((h >> 19)&0x03) == 1 )
        || (((h >> 17)&0x03) == 0 )
        || (((h >> 12)&0x0F) == 0x0F )
        || (((h >> 10) & 0x03) == 0x03 )
        || ((h & 0x03) == 0x02 ))
    {
        return 0;
    }
    return 1;
}
