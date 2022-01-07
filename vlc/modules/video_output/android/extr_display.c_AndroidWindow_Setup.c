
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* p_window; } ;
typedef TYPE_3__ vout_display_sys_t ;
struct TYPE_14__ {int pixel_size; } ;
typedef TYPE_4__ vlc_chroma_description_t ;
struct TYPE_11__ {unsigned int i_width; int i_chroma; } ;
struct TYPE_15__ {unsigned int i_pic_count; TYPE_1__ fmt; int b_opaque; } ;
typedef TYPE_5__ android_window ;
struct TYPE_12__ {int i_pic_count; } ;


 scalar_t__ AndroidWindow_SetupANW (TYPE_3__*,TYPE_5__*) ;
 int assert (int) ;
 TYPE_4__* vlc_fourcc_GetChromaDescription (int ) ;

__attribute__((used)) static int AndroidWindow_Setup(vout_display_sys_t *sys,
                               android_window *p_window,
                               unsigned int i_pic_count)
{
    if (i_pic_count != 0)
        p_window->i_pic_count = i_pic_count;

    if (!p_window->b_opaque) {
        const vlc_chroma_description_t *p_dsc =
            vlc_fourcc_GetChromaDescription( p_window->fmt.i_chroma );
        if (p_dsc)
        {
            assert(p_dsc->pixel_size != 0);

            unsigned align_pixels = (16 / p_dsc->pixel_size) - 1;
            p_window->fmt.i_width = (p_window->fmt.i_width + align_pixels) & ~align_pixels;
        }

        if (AndroidWindow_SetupANW(sys, p_window) != 0)
            return -1;
    } else {
        sys->p_window->i_pic_count = 31;
    }

    return 0;
}
