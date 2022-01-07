
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* pf_destroy ) (TYPE_2__*) ;} ;
struct TYPE_7__ {struct TYPE_7__* p_private; int dst; int src; TYPE_1__ updater; int * p_region; } ;
typedef TYPE_2__ subpicture_t ;


 int free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int subpicture_region_ChainDelete (int *) ;
 int video_format_Clean (int *) ;

void subpicture_Delete( subpicture_t *p_subpic )
{
    subpicture_region_ChainDelete( p_subpic->p_region );
    p_subpic->p_region = ((void*)0);

    if( p_subpic->updater.pf_destroy )
        p_subpic->updater.pf_destroy( p_subpic );

    if( p_subpic->p_private )
    {
        video_format_Clean( &p_subpic->p_private->src );
        video_format_Clean( &p_subpic->p_private->dst );
    }

    free( p_subpic->p_private );
    free( p_subpic );
}
