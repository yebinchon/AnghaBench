
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {int i_width; int i_visible_width; int i_height; int i_visible_height; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_8__ {int i_x; int i_y; int i_align; } ;
typedef TYPE_2__ subpicture_region_t ;


 int SUBPICTURE_ALIGN_LEFT ;
 int SUBPICTURE_ALIGN_TOP ;
 int VLC_CODEC_YUVA ;
 TYPE_2__* spuregion_CreateFromPicture (int *,TYPE_1__*,char const*) ;
 int video_format_Init (TYPE_1__*,int ) ;

__attribute__((used)) static subpicture_region_t * vout_OSDImage( vlc_object_t *p_obj,
                                            int x, int y, int w, int h,
                                            const char *psz_uri )
{
    video_format_t fmt_out;
    video_format_Init( &fmt_out, VLC_CODEC_YUVA );
    fmt_out.i_width = fmt_out.i_visible_width = w;
    fmt_out.i_height = fmt_out.i_visible_height = h;

    subpicture_region_t *image =
            spuregion_CreateFromPicture( p_obj, &fmt_out, psz_uri );
    if( image )
    {
        image->i_x = x;
        image->i_y = y;
        image->i_align = SUBPICTURE_ALIGN_LEFT|SUBPICTURE_ALIGN_TOP;
    }
    return image;
}
