
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_pagepos_end; int * p_prev; int p_next; } ;
typedef TYPE_1__ demux_index_entry_t ;


 TYPE_1__* xmalloc (int) ;

__attribute__((used)) static demux_index_entry_t *index_entry_new( void )
{
    demux_index_entry_t *idx = xmalloc( sizeof( demux_index_entry_t ) );
    if ( !idx ) return ((void*)0);
    idx->p_next = idx->p_prev = ((void*)0);
    idx->i_pagepos_end = -1;
    return idx;
}
