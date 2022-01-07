
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_size; void* p_data; scalar_t__ i_data; } ;
typedef TYPE_1__ var_buffer_t ;



void var_buffer_initread( var_buffer_t *p_buf, void *p_data, int i_data )
{
    p_buf->i_size = i_data;
    p_buf->i_data = 0;
    p_buf->p_data = p_data;
}
