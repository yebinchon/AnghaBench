
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int vlc_bswap32 (int) ;

__attribute__((used)) static inline uint32_t GetDW24BE( const uint8_t *p )
{
    uint32_t i = ( p[0] << 16 ) + ( p[1] << 8 ) + ( p[2] );



    return i;
}
