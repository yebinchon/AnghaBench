
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int filter_t ;
struct TYPE_4__ {TYPE_2__* first; } ;
typedef TYPE_1__ filter_chain_t ;
struct TYPE_5__ {int * pending; int filter; struct TYPE_5__* next; } ;
typedef TYPE_2__ chained_filter_t ;


 int FilterDeletePictures (int *) ;
 int filter_Flush (int *) ;

void filter_chain_VideoFlush( filter_chain_t *p_chain )
{
    for( chained_filter_t *f = p_chain->first; f != ((void*)0); f = f->next )
    {
        filter_t *p_filter = &f->filter;

        FilterDeletePictures( f->pending );
        f->pending = ((void*)0);

        filter_Flush( p_filter );
    }
}
