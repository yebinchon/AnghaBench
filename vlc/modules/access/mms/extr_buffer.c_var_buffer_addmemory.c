
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_data; scalar_t__ i_size; scalar_t__ p_data; } ;
typedef TYPE_1__ var_buffer_t ;


 int memcpy (scalar_t__,void*,int) ;
 scalar_t__ xrealloc (scalar_t__,scalar_t__) ;

void var_buffer_addmemory( var_buffer_t *p_buf, void *p_mem, int i_mem )
{

    if( p_buf->i_data + i_mem >= p_buf->i_size )
    {
        p_buf->i_size += i_mem + 1024;
        p_buf->p_data = xrealloc( p_buf->p_data, p_buf->i_size );
    }

    memcpy( p_buf->p_data + p_buf->i_data, p_mem, i_mem );
    p_buf->i_data += i_mem;
}
