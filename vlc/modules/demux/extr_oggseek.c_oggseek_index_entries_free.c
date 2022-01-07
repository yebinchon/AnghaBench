
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_next; } ;
typedef TYPE_1__ demux_index_entry_t ;


 int free (TYPE_1__*) ;

void oggseek_index_entries_free ( demux_index_entry_t *idx )
{
    demux_index_entry_t *idx_next;

    while ( idx != ((void*)0) )
    {
        idx_next = idx->p_next;
        free( idx );
        idx = idx_next;
    }
}
