
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;



__attribute__((used)) static uint8_t *FindNextPESHeader( uint8_t *p_buf, size_t i_buffer )
{
    const uint8_t *p_end = &p_buf[i_buffer];
    unsigned i_bitflow = 0;
    for( ; p_buf != p_end; p_buf++ )
    {
        i_bitflow <<= 1;
        if( !*p_buf )
        {
            i_bitflow |= 1;
        }
        else if( *p_buf == 0x01 && (i_bitflow & 0x06) == 0x06 )
        {
            return p_buf - 2;
        }
    }
    return ((void*)0);
}
