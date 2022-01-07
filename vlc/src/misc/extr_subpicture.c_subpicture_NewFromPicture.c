
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_fourcc_t ;
struct TYPE_14__ {scalar_t__ i_sar_den; scalar_t__ i_sar_num; int i_visible_height; int i_visible_width; int i_chroma; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_15__ {TYPE_4__* p_region; int i_original_picture_height; int i_original_picture_width; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_16__ {TYPE_1__ format; } ;
typedef TYPE_3__ picture_t ;
typedef int image_handler_t ;
struct TYPE_17__ {TYPE_3__* p_picture; } ;


 TYPE_3__* image_Convert (int *,TYPE_3__*,TYPE_1__*,TYPE_1__*) ;
 int * image_HandlerCreate (int *) ;
 int image_HandlerDelete (int *) ;
 int picture_Release (TYPE_3__*) ;
 TYPE_2__* subpicture_New (int *) ;
 TYPE_4__* subpicture_region_New (TYPE_1__*) ;

subpicture_t *subpicture_NewFromPicture( vlc_object_t *p_obj,
                                         picture_t *p_picture, vlc_fourcc_t i_chroma )
{

    video_format_t fmt_in = p_picture->format;


    video_format_t fmt_out;
    fmt_out = fmt_in;
    fmt_out.i_chroma = i_chroma;


    image_handler_t *p_image = image_HandlerCreate( p_obj );
    if( !p_image )
        return ((void*)0);

    picture_t *p_pip = image_Convert( p_image, p_picture, &fmt_in, &fmt_out );

    image_HandlerDelete( p_image );

    if( !p_pip )
        return ((void*)0);

    subpicture_t *p_subpic = subpicture_New( ((void*)0) );
    if( !p_subpic )
    {
         picture_Release( p_pip );
         return ((void*)0);
    }

    p_subpic->i_original_picture_width = fmt_out.i_visible_width;
    p_subpic->i_original_picture_height = fmt_out.i_visible_height;

    fmt_out.i_sar_num =
    fmt_out.i_sar_den = 0;

    p_subpic->p_region = subpicture_region_New( &fmt_out );
    if( p_subpic->p_region )
    {
        picture_Release( p_subpic->p_region->p_picture );
        p_subpic->p_region->p_picture = p_pip;
    }
    else
    {
        picture_Release( p_pip );
    }
    return p_subpic;
}
