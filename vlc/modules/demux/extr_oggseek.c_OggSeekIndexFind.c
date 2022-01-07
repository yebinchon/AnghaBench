
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_4__ {TYPE_2__* idx; } ;
typedef TYPE_1__ logical_stream_t ;
typedef int int64_t ;
struct TYPE_5__ {scalar_t__ i_value; struct TYPE_5__* p_next; int i_pagepos; } ;
typedef TYPE_2__ demux_index_entry_t ;



__attribute__((used)) static bool OggSeekIndexFind ( logical_stream_t *p_stream, vlc_tick_t i_timestamp,
                               int64_t *pi_pos_lower, int64_t *pi_pos_upper )
{
    demux_index_entry_t *idx = p_stream->idx;

    while ( idx != ((void*)0) )
    {
        if ( idx->i_value <= i_timestamp )
        {
            if ( !idx->p_next )
            {
                *pi_pos_lower = idx->i_pagepos;
                return 1;
            }
            if ( idx->p_next->i_value > i_timestamp )
            {
                *pi_pos_lower = idx->i_pagepos;
                *pi_pos_upper = idx->p_next->i_pagepos;
                return 1;
            }
        }
        idx = idx->p_next;
    }

    return 0;
}
