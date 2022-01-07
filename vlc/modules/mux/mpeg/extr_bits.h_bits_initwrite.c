
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_size; int i_mask; scalar_t__* p_data; scalar_t__ i_data; } ;
typedef TYPE_1__ bits_buffer_t ;


 scalar_t__* malloc (int) ;

__attribute__((used)) static inline int bits_initwrite( bits_buffer_t *p_buffer,
                                  int i_size, void *p_data )
{
    p_buffer->i_size = i_size;
    p_buffer->i_data = 0;
    p_buffer->i_mask = 0x80;
    p_buffer->p_data = p_data;
    if( !p_buffer->p_data )
    {
        if( !( p_buffer->p_data = malloc( i_size ) ) )
            return -1;
    }
    p_buffer->p_data[0] = 0;
    return 0;
}
