
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_length; int p_begin; int p_memory; } ;
typedef TYPE_1__ buffer_t ;


 int VLC_SUCCESS ;

int BufferDel( buffer_t *p_buffer, int i_len )
{
    p_buffer->i_length -= i_len;
    if( p_buffer->i_length == 0 )
    {

        p_buffer->p_begin = p_buffer->p_memory;
    }
    else
    {
        p_buffer->p_begin += i_len;
    }
    return VLC_SUCCESS;
}
