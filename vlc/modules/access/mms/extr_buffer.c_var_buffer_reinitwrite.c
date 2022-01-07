
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_size; void* p_data; scalar_t__ i_data; } ;
typedef TYPE_1__ var_buffer_t ;


 int free (void*) ;
 void* malloc (int) ;

int var_buffer_reinitwrite( var_buffer_t *p_buf, int i_default_size )
{
    p_buf->i_data = 0;
    if( p_buf->i_size < i_default_size )
    {
        p_buf->i_size = i_default_size;
        free( p_buf->p_data );
        p_buf->p_data = malloc( p_buf->i_size );
    }
    if( !p_buf->p_data )
    {
        p_buf->i_size = ( i_default_size > 0 ) ? i_default_size : 2048;
        p_buf->p_data = malloc( p_buf->i_size );
    }
    return p_buf->p_data ? 0 : -1;
}
