
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {float* table_blend; float* buf_overlap; unsigned int buf_queue; unsigned int samples_overlap; } ;
typedef TYPE_2__ filter_sys_t ;



__attribute__((used)) static void output_overlap_float( filter_t *p_filter,
                                  void *buf_out,
                                  unsigned bytes_off )
{
    filter_sys_t *p = p_filter->p_sys;
    float *pout = buf_out;
    float *pb = p->table_blend;
    float *po = p->buf_overlap;
    float *pin = (float *)( p->buf_queue + bytes_off );
    unsigned i;
    for( i = 0; i < p->samples_overlap; i++ ) {
        *pout++ = *po - *pb++ * ( *po - *pin++ ); po++;
    }
}
