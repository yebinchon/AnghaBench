
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int fmt_in; int fmt_out; int p_module; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_9__ {int obj; TYPE_3__* last; TYPE_3__* first; } ;
typedef TYPE_2__ filter_chain_t ;
struct TYPE_10__ {int mouse; int pending; struct TYPE_10__* prev; struct TYPE_10__* next; } ;
typedef TYPE_3__ chained_filter_t ;


 int FilterDeletePictures (int ) ;
 int assert (int) ;
 int es_format_Clean (int *) ;
 int free (int ) ;
 int module_unneed (TYPE_1__*,int ) ;
 int msg_Dbg (int ,char*,void*) ;
 int vlc_object_delete (TYPE_1__*) ;

void filter_chain_DeleteFilter( filter_chain_t *chain, filter_t *filter )
{
    chained_filter_t *chained = (chained_filter_t *)filter;


    if( chained->prev != ((void*)0) )
        chained->prev->next = chained->next;
    else
    {
        assert( chained == chain->first );
        chain->first = chained->next;
    }

    if( chained->next != ((void*)0) )
        chained->next->prev = chained->prev;
    else
    {
        assert( chained == chain->last );
        chain->last = chained->prev;
    }

    module_unneed( filter, filter->p_module );

    msg_Dbg( chain->obj, "Filter %p removed from chain", (void *)filter );
    FilterDeletePictures( chained->pending );

    free( chained->mouse );
    es_format_Clean( &filter->fmt_out );
    es_format_Clean( &filter->fmt_in );

    vlc_object_delete(filter);

}
