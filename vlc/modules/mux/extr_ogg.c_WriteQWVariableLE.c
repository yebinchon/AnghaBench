
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static int WriteQWVariableLE( uint64_t i_64, uint64_t i_offset,
                              uint8_t *p_buffer, int i_buffer_size )
{
    uint8_t *p_dest = p_buffer + i_offset;
    int i_written = 0;

    for(;;)
    {
        if ( p_dest - p_buffer >= i_buffer_size ) return -1;

        *p_dest = (uint8_t) ( i_64 & 0x7F );
        i_64 >>= 7;
        i_written++;

        if ( i_64 == 0 )
        {
            *p_dest |= 0x80;
            return i_written;
        }

        p_dest++;
    }
}
