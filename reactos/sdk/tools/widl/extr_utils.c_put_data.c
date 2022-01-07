
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_output_buffer_space (size_t) ;
 int memcpy (size_t,void const*,size_t) ;
 size_t output_buffer ;
 size_t output_buffer_pos ;

void put_data( const void *data, size_t size )
{
    check_output_buffer_space( size );
    memcpy( output_buffer + output_buffer_pos, data, size );
    output_buffer_pos += size;
}
