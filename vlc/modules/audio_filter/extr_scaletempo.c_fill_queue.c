
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {scalar_t__ bytes_to_slide; scalar_t__ bytes_queued; unsigned int buf_queue; unsigned int bytes_queue_max; } ;
typedef TYPE_2__ filter_sys_t ;


 unsigned int __MIN (unsigned int,unsigned int) ;
 int memcpy (unsigned int,int *,unsigned int) ;
 int memmove (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static size_t fill_queue( filter_t *p_filter,
                          uint8_t *p_buffer,
                          size_t i_buffer,
                          size_t offset )
{
    filter_sys_t *p = p_filter->p_sys;
    unsigned bytes_in = i_buffer - offset;
    size_t offset_unchanged = offset;

    if( p->bytes_to_slide > 0 ) {
        if( p->bytes_to_slide < p->bytes_queued ) {
            unsigned bytes_in_move = p->bytes_queued - p->bytes_to_slide;
            memmove( p->buf_queue,
                     p->buf_queue + p->bytes_to_slide,
                     bytes_in_move );
            p->bytes_to_slide = 0;
            p->bytes_queued = bytes_in_move;
        } else {
            unsigned bytes_in_skip;
            p->bytes_to_slide -= p->bytes_queued;
            bytes_in_skip = __MIN( p->bytes_to_slide, bytes_in );
            p->bytes_queued = 0;
            p->bytes_to_slide -= bytes_in_skip;
            offset += bytes_in_skip;
            bytes_in -= bytes_in_skip;
        }
    }

    if( bytes_in > 0 ) {
        unsigned bytes_in_copy = __MIN( p->bytes_queue_max - p->bytes_queued, bytes_in );
        memcpy( p->buf_queue + p->bytes_queued,
                p_buffer + offset,
                bytes_in_copy );
        p->bytes_queued += bytes_in_copy;
        offset += bytes_in_copy;
    }

    return offset - offset_unchanged;
}
