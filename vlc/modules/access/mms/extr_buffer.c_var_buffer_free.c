
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_size; scalar_t__ i_data; int p_data; } ;
typedef TYPE_1__ var_buffer_t ;


 int free (int ) ;

void var_buffer_free( var_buffer_t *p_buf )
{
    free( p_buf->p_data );
    p_buf->i_data = 0;
    p_buf->i_size = 0;
}
