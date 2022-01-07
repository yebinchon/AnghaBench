
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* p_next; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_10__ {TYPE_3__* last; int first; } ;
typedef TYPE_2__ filter_chain_t ;
struct TYPE_11__ {int next; TYPE_1__* pending; struct TYPE_11__* prev; } ;
typedef TYPE_3__ chained_filter_t ;


 TYPE_1__* FilterChainVideoFilter (int ,TYPE_1__*) ;

picture_t *filter_chain_VideoFilter( filter_chain_t *p_chain, picture_t *p_pic )
{
    if( p_pic )
    {
        p_pic = FilterChainVideoFilter( p_chain->first, p_pic );
        if( p_pic )
            return p_pic;
    }
    for( chained_filter_t *b = p_chain->last; b != ((void*)0); b = b->prev )
    {
        p_pic = b->pending;
        if( !p_pic )
            continue;
        b->pending = p_pic->p_next;
        p_pic->p_next = ((void*)0);

        p_pic = FilterChainVideoFilter( b->next, p_pic );
        if( p_pic )
            return p_pic;
    }
    return ((void*)0);
}
