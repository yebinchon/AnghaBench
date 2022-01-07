
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_times; struct TYPE_4__* pi_pos; } ;
typedef TYPE_1__ mp4_fragments_index_t ;


 int free (TYPE_1__*) ;

void MP4_Fragments_Index_Delete( mp4_fragments_index_t *p_index )
{
    if( p_index )
    {
        free( p_index->pi_pos );
        free( p_index->p_times );
        free( p_index );
    }
}
