
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fmt; int p_text; scalar_t__ p_picture; scalar_t__ p_private; } ;
typedef TYPE_1__ subpicture_region_t ;


 int free (TYPE_1__*) ;
 int picture_Release (scalar_t__) ;
 int subpicture_region_private_Delete (scalar_t__) ;
 int text_segment_ChainDelete (int ) ;
 int video_format_Clean (int *) ;

void subpicture_region_Delete( subpicture_region_t *p_region )
{
    if( !p_region )
        return;

    if( p_region->p_private )
        subpicture_region_private_Delete( p_region->p_private );

    if( p_region->p_picture )
        picture_Release( p_region->p_picture );

    text_segment_ChainDelete( p_region->p_text );
    video_format_Clean( &p_region->fmt );
    free( p_region );
}
