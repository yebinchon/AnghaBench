
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t i_buffer; int const* p_buffer; } ;
typedef TYPE_1__ mp4_box_iterator_t ;



__attribute__((used)) static void mp4_box_iterator_Init( mp4_box_iterator_t *p_it,
                                   const uint8_t *p_data, size_t i_data )
{
    p_it->p_buffer = p_data;
    p_it->i_buffer = i_data;
}
