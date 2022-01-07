
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ xcb_visualid_t ;
typedef int xcb_setup_t ;
typedef int xcb_screen_t ;
struct TYPE_6__ {scalar_t__ depth; } ;
typedef TYPE_1__ xcb_depth_t ;
struct TYPE_7__ {scalar_t__ rem; TYPE_1__* data; } ;
typedef TYPE_2__ xcb_depth_iterator_t ;
typedef int video_format_t ;
typedef scalar_t__ uint8_t ;


 scalar_t__ DepthToFormat (int const*,TYPE_1__ const*,int *) ;
 int video_format_ApplyRotation (int *,int *) ;
 int xcb_depth_next (TYPE_2__*) ;
 TYPE_2__ xcb_screen_allowed_depths_iterator (int const*) ;

__attribute__((used)) static xcb_visualid_t ScreenToFormat(const xcb_setup_t *setup,
                                     const xcb_screen_t *screen,
                                     uint8_t *restrict bits,
                                     video_format_t *restrict fmtp)
{
    xcb_visualid_t visual = 0;

    *bits = 0;

    for (xcb_depth_iterator_t it = xcb_screen_allowed_depths_iterator(screen);
         it.rem > 0;
         xcb_depth_next(&it))
    {
        const xcb_depth_t *depth = it.data;
        video_format_t fmt;
        xcb_visualid_t vid;

        if (depth->depth <= *bits)
            continue;

        video_format_ApplyRotation(&fmt, fmtp);
        vid = DepthToFormat(setup, depth, &fmt);
        if (vid != 0)
        {
            *bits = depth->depth;
            *fmtp = fmt;
            visual = vid;
        }
    }
    return visual;
}
