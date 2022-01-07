
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_setup_t ;
struct TYPE_4__ {scalar_t__ depth; scalar_t__ bits_per_pixel; int scanline_pad; } ;
typedef TYPE_1__ xcb_format_t ;
typedef scalar_t__ uint_fast8_t ;


 scalar_t__ unlikely (int) ;
 TYPE_1__* xcb_setup_pixmap_formats (int const*) ;
 int xcb_setup_pixmap_formats_length (int const*) ;

const xcb_format_t *vlc_xcb_DepthToPixmapFormat(const xcb_setup_t *setup,
                                                uint_fast8_t depth)
{
    const xcb_format_t *fmt = xcb_setup_pixmap_formats(setup);

    for (int i = xcb_setup_pixmap_formats_length(setup); i > 0; i--, fmt++)
        if (fmt->depth == depth)
        {
            if (unlikely(fmt->bits_per_pixel < depth
                      || (fmt->scanline_pad % fmt->bits_per_pixel)))
                return ((void*)0);
            return fmt;
        }
    return ((void*)0);
}
