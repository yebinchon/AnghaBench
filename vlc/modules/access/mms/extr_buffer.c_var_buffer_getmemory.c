
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_data; scalar_t__ p_data; scalar_t__ i_size; } ;
typedef TYPE_1__ var_buffer_t ;
typedef int int64_t ;


 int __MIN (int ,scalar_t__) ;
 int memcpy (void*,scalar_t__,int) ;

int var_buffer_getmemory ( var_buffer_t *p_buf, void *p_mem, int64_t i_mem )
{
    int i_copy;

    i_copy = __MIN( i_mem, p_buf->i_size - p_buf->i_data );
    if( i_copy > 0 && p_mem != ((void*)0))
    {
        memcpy( p_mem, p_buf->p_data + p_buf->i_data , i_copy );
    }
    if( i_copy < 0 )
    {
        i_copy = 0;
    }
    p_buf->i_data += i_copy;
    return( i_copy );
}
