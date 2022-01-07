
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t i_data; size_t i_size; int* p_data; } ;
typedef TYPE_1__ var_buffer_t ;
typedef int uint8_t ;


 int* xrealloc (int*,size_t) ;

void var_buffer_add8 ( var_buffer_t *p_buf, uint8_t i_byte )
{

    if( p_buf->i_data >= p_buf->i_size )
    {
        p_buf->i_size += 1024;
        p_buf->p_data = xrealloc( p_buf->p_data, p_buf->i_size );
    }
    p_buf->p_data[p_buf->i_data] = i_byte&0xff;
    p_buf->i_data++;
}
