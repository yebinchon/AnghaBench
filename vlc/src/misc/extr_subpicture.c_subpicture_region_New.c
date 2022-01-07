
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ i_chroma; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_10__ {int fmt; int p_picture; } ;
typedef TYPE_2__ subpicture_region_t ;


 scalar_t__ VLC_CODEC_TEXT ;
 int free (TYPE_2__*) ;
 int picture_NewFromFormat (TYPE_1__ const*) ;
 TYPE_2__* subpicture_region_NewInternal (TYPE_1__ const*) ;
 int video_format_Clean (int *) ;

subpicture_region_t *subpicture_region_New( const video_format_t *p_fmt )
{
    subpicture_region_t *p_region =
        subpicture_region_NewInternal( p_fmt );
    if( !p_region )
        return ((void*)0);

    if( p_fmt->i_chroma == VLC_CODEC_TEXT )
        return p_region;

    p_region->p_picture = picture_NewFromFormat( p_fmt );
    if( !p_region->p_picture )
    {
        video_format_Clean( &p_region->fmt );
        free( p_region );
        return ((void*)0);
    }

    return p_region;
}
