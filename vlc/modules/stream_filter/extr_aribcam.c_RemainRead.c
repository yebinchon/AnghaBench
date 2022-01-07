
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_7__ {size_t i_size; TYPE_4__* p_list; } ;
struct TYPE_9__ {TYPE_1__ remain; } ;
typedef TYPE_3__ stream_sys_t ;
struct TYPE_10__ {scalar_t__ i_buffer; size_t p_buffer; struct TYPE_10__* p_next; } ;
typedef TYPE_4__ block_t ;


 size_t __MIN (size_t,scalar_t__) ;
 int block_Release (TYPE_4__*) ;
 int memcpy (int *,size_t,size_t) ;

__attribute__((used)) static size_t RemainRead( stream_t *p_stream, uint8_t *p_data, size_t i_toread )
{
    stream_sys_t *p_sys = p_stream->p_sys;

    size_t i_total = 0;

    while( p_sys->remain.p_list && i_toread )
    {
        size_t i_copy = __MIN( i_toread, p_sys->remain.p_list->i_buffer );
        memcpy( p_data, p_sys->remain.p_list->p_buffer, i_copy );

        i_toread -= i_copy;
        i_total += i_copy;
        p_data += i_copy;


        p_sys->remain.p_list->i_buffer -= i_copy;
        p_sys->remain.p_list->p_buffer += i_copy;
        p_sys->remain.i_size -= i_copy;

        if ( p_sys->remain.p_list->i_buffer == 0 )
        {
            block_t *p_prevhead = p_sys->remain.p_list;
            p_sys->remain.p_list = p_sys->remain.p_list->p_next;
            block_Release( p_prevhead );
        }
    }
    return i_total;
}
