
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {int i_idx; int i_idx_max; TYPE_2__* idx; } ;
typedef TYPE_1__ demux_index_t ;
struct TYPE_7__ {scalar_t__ i_time; scalar_t__ i_offset; } ;
typedef TYPE_2__ demux_index_entry_t ;


 int DEMUX_INDEX_SIZE_MAX ;
 int INT_MAX ;
 int SIZE_MAX ;
 TYPE_2__* realloc (TYPE_2__*,size_t) ;

__attribute__((used)) static void demux_IndexAppend( demux_index_t *p_idx,
                               int64_t i_time, int64_t i_offset )
{

    if( p_idx->i_idx > 0 && p_idx->idx[p_idx->i_idx-1].i_time >= i_time )
        return;


    if( p_idx->i_idx >= p_idx->i_idx_max )
    {
        if( p_idx->i_idx >= DEMUX_INDEX_SIZE_MAX )
        {

            const int64_t i_length = p_idx->idx[p_idx->i_idx-1].i_time -
                                                        p_idx->idx[0].i_time;
            const int i_count = DEMUX_INDEX_SIZE_MAX/2;
            int i, j;


            for( i = 1, j = 1; i < p_idx->i_idx; i++ )
            {
                if( p_idx->idx[i].i_time < j * i_length / i_count )
                    continue;

                p_idx->idx[j++] = p_idx->idx[i];
            }
            p_idx->i_idx = j;

            if( p_idx->i_idx > 3 * DEMUX_INDEX_SIZE_MAX / 4 )
            {


                for( i = 0; i < p_idx->i_idx/2; i++ )
                    p_idx->idx[i] = p_idx->idx[2*i];
                p_idx->i_idx /= 2;
            }
        }
        else
        {
            if(INT_MAX - 1000 < p_idx->i_idx_max ||
               (SIZE_MAX / sizeof(demux_index_entry_t)) - p_idx->i_idx_max < 1000)
                return;
            size_t i_realloc = (1000 + p_idx->i_idx_max) * sizeof(demux_index_entry_t);
            demux_index_entry_t *p_realloc = realloc( p_idx->idx, i_realloc );
            if( !p_realloc )
                return;
            p_idx->i_idx_max += 1000;
            p_idx->idx = p_realloc;
        }
    }


    p_idx->idx[p_idx->i_idx].i_time = i_time;
    p_idx->idx[p_idx->i_idx].i_offset = i_offset;

    p_idx->i_idx++;
}
