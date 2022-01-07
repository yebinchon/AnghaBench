
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t i_data; size_t i_size; int * p_data; } ;
typedef TYPE_1__ var_buffer_t ;
typedef int uint8_t ;



uint8_t var_buffer_get8 ( var_buffer_t *p_buf )
{
    uint8_t i_byte;
    if( p_buf->i_data >= p_buf->i_size )
    {
        return( 0 );
    }
    i_byte = p_buf->p_data[p_buf->i_data];
    p_buf->i_data++;
    return( i_byte );
}
