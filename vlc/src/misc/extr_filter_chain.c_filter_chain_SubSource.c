
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int subpicture_t ;
typedef int spu_t ;
struct TYPE_6__ {int * (* pf_sub_source ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ filter_t ;
struct TYPE_7__ {TYPE_3__* first; } ;
typedef TYPE_2__ filter_chain_t ;
struct TYPE_8__ {TYPE_1__ filter; struct TYPE_8__* next; } ;
typedef TYPE_3__ chained_filter_t ;


 int spu_PutSubpicture (int *,int *) ;
 int * stub1 (TYPE_1__*,int ) ;

void filter_chain_SubSource( filter_chain_t *p_chain, spu_t *spu,
                             vlc_tick_t display_date )
{
    for( chained_filter_t *f = p_chain->first; f != ((void*)0); f = f->next )
    {
        filter_t *p_filter = &f->filter;
        subpicture_t *p_subpic = p_filter->pf_sub_source( p_filter, display_date );
        if( p_subpic )
            spu_PutSubpicture( spu, p_subpic );
    }
}
