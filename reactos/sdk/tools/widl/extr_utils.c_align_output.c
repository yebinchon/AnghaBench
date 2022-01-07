
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_output_buffer_space (size_t) ;
 int memset (scalar_t__,int ,size_t) ;
 scalar_t__ output_buffer ;
 unsigned int output_buffer_pos ;

void align_output( unsigned int align )
{
    size_t size = align - (output_buffer_pos % align);

    if (size == align) return;
    check_output_buffer_space( size );
    memset( output_buffer + output_buffer_pos, 0, size );
    output_buffer_pos += size;
}
