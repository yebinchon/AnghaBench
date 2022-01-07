
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int * p_next; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_12__ {TYPE_1__* (* pf_video_filter ) (TYPE_2__*,TYPE_1__*) ;} ;
typedef TYPE_2__ filter_t ;
struct TYPE_13__ {int * pending; TYPE_2__ filter; struct TYPE_13__* next; } ;
typedef TYPE_3__ chained_filter_t ;


 int FilterDeletePictures (int *) ;
 int msg_Warn (TYPE_2__*,char*) ;
 TYPE_1__* stub1 (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static picture_t *FilterChainVideoFilter( chained_filter_t *f, picture_t *p_pic )
{
    for( ; f != ((void*)0); f = f->next )
    {
        filter_t *p_filter = &f->filter;
        p_pic = p_filter->pf_video_filter( p_filter, p_pic );
        if( !p_pic )
            break;
        if( f->pending )
        {
            msg_Warn( p_filter, "dropping pictures" );
            FilterDeletePictures( f->pending );
        }
        f->pending = p_pic->p_next;
        p_pic->p_next = ((void*)0);
    }
    return p_pic;
}
