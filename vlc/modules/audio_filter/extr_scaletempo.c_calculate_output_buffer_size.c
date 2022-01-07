
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int bytes_queued; int bytes_to_slide; int bytes_queue_max; unsigned int bytes_stride; int bytes_per_frame; int bytes_stride_scaled; } ;
typedef TYPE_2__ filter_sys_t ;



__attribute__((used)) static size_t calculate_output_buffer_size( filter_t *p_filter,
                                            size_t bytes_in )
{
    filter_sys_t *p = p_filter->p_sys;
    size_t bytes_out = 0;
    int bytes_to_out = bytes_in + p->bytes_queued - p->bytes_to_slide;
    if( bytes_to_out >= (int)p->bytes_queue_max ) {

      bytes_out = p->bytes_stride * ( (unsigned)(
          ( bytes_to_out - p->bytes_queue_max + p->bytes_per_frame )
          / p->bytes_stride_scaled ) + 1 );
    }
    return bytes_out;
}
