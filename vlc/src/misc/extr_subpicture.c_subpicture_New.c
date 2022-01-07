
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * p_sys; int * pf_destroy; int * pf_update; int * pf_validate; } ;
typedef TYPE_1__ subpicture_updater_t ;
struct TYPE_10__ {int b_absolute; int b_fade; int b_subtitle; int i_alpha; TYPE_1__ updater; TYPE_3__* p_private; int * p_region; scalar_t__ i_order; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_11__ {int dst; int src; } ;
typedef TYPE_3__ subpicture_private_t ;


 TYPE_2__* calloc (int,int) ;
 int free (TYPE_2__*) ;
 TYPE_3__* malloc (int) ;
 int video_format_Init (int *,int ) ;

subpicture_t *subpicture_New( const subpicture_updater_t *p_upd )
{
    subpicture_t *p_subpic = calloc( 1, sizeof(*p_subpic) );
    if( !p_subpic )
        return ((void*)0);

    p_subpic->i_order = 0;
    p_subpic->b_absolute = 1;
    p_subpic->b_fade = 0;
    p_subpic->b_subtitle = 0;
    p_subpic->i_alpha = 0xFF;
    p_subpic->p_region = ((void*)0);

    if( p_upd )
    {
        subpicture_private_t *p_private = malloc( sizeof(*p_private) );
        if( !p_private )
        {
            free( p_subpic );
            return ((void*)0);
        }
        video_format_Init( &p_private->src, 0 );
        video_format_Init( &p_private->dst, 0 );

        p_subpic->updater = *p_upd;
        p_subpic->p_private = p_private;
    }
    else
    {
        p_subpic->p_private = ((void*)0);

        p_subpic->updater.pf_validate = ((void*)0);
        p_subpic->updater.pf_update = ((void*)0);
        p_subpic->updater.pf_destroy = ((void*)0);
        p_subpic->updater.p_sys = ((void*)0);
    }
    return p_subpic;
}
