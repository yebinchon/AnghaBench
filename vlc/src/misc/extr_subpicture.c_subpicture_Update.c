
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int video_format_t ;
struct TYPE_7__ {int (* pf_update ) (TYPE_2__*,int const*,int const*,int ) ;int (* pf_validate ) (TYPE_2__*,int,int const*,int,int const*,int ) ;} ;
typedef TYPE_1__ subpicture_updater_t ;
struct TYPE_8__ {int * p_region; TYPE_3__* p_private; TYPE_1__ updater; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_9__ {int dst; int src; } ;
typedef TYPE_3__ subpicture_private_t ;


 int stub1 (TYPE_2__*,int,int const*,int,int const*,int ) ;
 int stub2 (TYPE_2__*,int const*,int const*,int ) ;
 int subpicture_region_ChainDelete (int *) ;
 int video_format_Clean (int *) ;
 int video_format_Copy (int *,int const*) ;
 int video_format_IsSimilar (int const*,int *) ;

void subpicture_Update( subpicture_t *p_subpicture,
                        const video_format_t *p_fmt_src,
                        const video_format_t *p_fmt_dst,
                        vlc_tick_t i_ts )
{
    subpicture_updater_t *p_upd = &p_subpicture->updater;
    subpicture_private_t *p_private = p_subpicture->p_private;

    if( !p_upd->pf_validate )
        return;
    if( !p_upd->pf_validate( p_subpicture,
                          !video_format_IsSimilar( p_fmt_src,
                                                   &p_private->src ), p_fmt_src,
                          !video_format_IsSimilar( p_fmt_dst,
                                                   &p_private->dst ), p_fmt_dst,
                          i_ts ) )
        return;

    subpicture_region_ChainDelete( p_subpicture->p_region );
    p_subpicture->p_region = ((void*)0);

    p_upd->pf_update( p_subpicture, p_fmt_src, p_fmt_dst, i_ts );

    video_format_Clean( &p_private->src );
    video_format_Clean( &p_private->dst );

    video_format_Copy( &p_private->src, p_fmt_src );
    video_format_Copy( &p_private->dst, p_fmt_dst );
}
