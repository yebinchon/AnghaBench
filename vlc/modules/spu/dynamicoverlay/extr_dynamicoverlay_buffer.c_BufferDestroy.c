
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_begin; int * p_memory; } ;
typedef TYPE_1__ buffer_t ;


 int VLC_SUCCESS ;
 int free (int *) ;

int BufferDestroy( buffer_t *p_buffer )
{
    free( p_buffer->p_memory );
    p_buffer->p_memory = ((void*)0);
    p_buffer->p_begin = ((void*)0);

    return VLC_SUCCESS;
}
