
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t i_buffer; int * p_buffer; scalar_t__ i_buffer_size; } ;
typedef TYPE_1__ bo_t ;


 int __MIN (int,scalar_t__) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void bo_add_mem( bo_t *p_bo, uint8_t *p_mem, int i_size )
{
    int i_copy = __MIN( i_size, p_bo->i_buffer_size - p_bo->i_buffer );

    if( i_copy > 0 )
    {
        memcpy( &p_bo->p_buffer[p_bo->i_buffer], p_mem, i_copy );
    }
    p_bo->i_buffer += i_size;
}
