
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_buffer_size; int * p_buffer; scalar_t__ i_buffer; } ;
typedef TYPE_1__ bo_t ;



__attribute__((used)) static void bo_init( bo_t *p_bo, uint8_t *p_buffer, int i_size )
{
    p_bo->i_buffer_size = i_size;
    p_bo->i_buffer = 0;
    p_bo->p_buffer = p_buffer;
}
