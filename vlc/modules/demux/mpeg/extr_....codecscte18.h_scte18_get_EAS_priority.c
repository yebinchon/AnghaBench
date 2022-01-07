
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int scte18_get_EAS_priority( const uint8_t *p_buffer, size_t i_buffer )
{
    if( i_buffer < 17 || p_buffer[0] )
        return -1;

    size_t i_offset = 6;
    size_t i_len = p_buffer[i_offset];
    i_offset += i_len + 1;
    if( i_offset >= i_buffer )
        return -1;

    i_len = p_buffer[i_offset];
    i_offset += i_len + 1;

    i_offset += 1 + 4 + 2 + 1;

    if( i_offset >= i_buffer )
        return -1;

    return (p_buffer[i_offset] & 0x0f);
}
