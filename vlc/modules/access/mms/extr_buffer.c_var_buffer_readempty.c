
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_data; scalar_t__ i_size; } ;
typedef TYPE_1__ var_buffer_t ;



int var_buffer_readempty( var_buffer_t *p_buf )
{
    return( ( p_buf->i_data >= p_buf->i_size ) ? 1 : 0 );
}
