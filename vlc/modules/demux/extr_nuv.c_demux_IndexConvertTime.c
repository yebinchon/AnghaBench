
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int uint64_t ;
struct TYPE_5__ {int i_idx; TYPE_1__* idx; } ;
typedef TYPE_2__ demux_index_t ;
struct TYPE_4__ {scalar_t__ i_time; int i_offset; } ;



__attribute__((used)) static uint64_t demux_IndexConvertTime(demux_index_t *p_idx,
                                       vlc_tick_t i_time)
{
    int i_min = 0;
    int i_max = p_idx->i_idx-1;


    if( p_idx->i_idx <= 0 )
        return -1;


    if( i_time <= p_idx->idx[0].i_time )
        return p_idx->idx[0].i_offset;
    if( i_time >= p_idx->idx[i_max].i_time )
        return p_idx->idx[i_max].i_offset;


    for( ;; )
    {
        int i_med;

        if( i_max - i_min <= 1 )
            break;

        i_med = (i_min+i_max)/2;
        if( p_idx->idx[i_med].i_time < i_time )
            i_min = i_med;
        else if( p_idx->idx[i_med].i_time > i_time )
            i_max = i_med;
        else
            return p_idx->idx[i_med].i_offset;
    }


    if( i_time - p_idx->idx[i_min].i_time < p_idx->idx[i_max].i_time - i_time )
        return p_idx->idx[i_min].i_offset;
    else
        return p_idx->idx[i_max].i_offset;
}
