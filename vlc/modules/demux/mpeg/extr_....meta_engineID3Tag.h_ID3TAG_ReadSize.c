
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 int GetDWBE (scalar_t__ const*) ;

__attribute__((used)) static uint32_t ID3TAG_ReadSize( const uint8_t *p_buffer, bool b_syncsafe )
{
    if( !b_syncsafe )
        return GetDWBE( p_buffer );
    return ( (uint32_t)p_buffer[3] & 0x7F ) |
            (( (uint32_t)p_buffer[2] & 0x7F ) << 7) |
            (( (uint32_t)p_buffer[1] & 0x7F ) << 14) |
            (( (uint32_t)p_buffer[0] & 0x7F ) << 21);
}
