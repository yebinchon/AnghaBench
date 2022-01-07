
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fmt; scalar_t__ p_picture; } ;
typedef TYPE_1__ subpicture_region_private_t ;


 int free (TYPE_1__*) ;
 int picture_Release (scalar_t__) ;
 int video_format_Clean (int *) ;

void subpicture_region_private_Delete( subpicture_region_private_t *p_private )
{
    if( p_private->p_picture )
        picture_Release( p_private->p_picture );
    video_format_Clean( &p_private->fmt );
    free( p_private );
}
