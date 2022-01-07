
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int i_size; int i_max; TYPE_2__* p_entry; } ;
typedef TYPE_1__ avi_index_t ;
struct TYPE_8__ {scalar_t__ i_pos; scalar_t__ i_lengthtotal; scalar_t__ i_length; } ;
typedef TYPE_2__ avi_entry_t ;


 TYPE_2__* realloc_or_free (TYPE_2__*,int) ;

__attribute__((used)) static void avi_index_Append( avi_index_t *p_index, uint64_t *pi_last_pos,
                              avi_entry_t *p_entry )
{

    if( *pi_last_pos < p_entry->i_pos )
         *pi_last_pos = p_entry->i_pos;


    if( p_index->i_size >= p_index->i_max )
    {
        p_index->i_max += 16384;
        p_index->p_entry = realloc_or_free( p_index->p_entry,
                                            p_index->i_max * sizeof( *p_index->p_entry ) );
        if( !p_index->p_entry )
            return;
    }

    if( p_index->i_size > 0 )
    {
        p_entry->i_lengthtotal =
            p_index->p_entry[p_index->i_size - 1].i_length +
                p_index->p_entry[p_index->i_size - 1].i_lengthtotal;
    }
    else
    {
        p_entry->i_lengthtotal = 0;
    }

    p_index->p_entry[p_index->i_size++] = *p_entry;
}
