
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int visual_id; } ;
typedef TYPE_1__ xcb_visualtype_t ;
typedef int xcb_visualid_t ;
typedef int xcb_setup_t ;
struct TYPE_9__ {int depth; } ;
typedef TYPE_2__ xcb_depth_t ;
typedef int video_format_t ;


 scalar_t__ vlc_xcb_VisualToFormat (int const*,int ,TYPE_1__ const*,int *) ;
 TYPE_1__* xcb_depth_visuals (TYPE_2__ const*) ;
 int xcb_depth_visuals_length (TYPE_2__ const*) ;

__attribute__((used)) static xcb_visualid_t DepthToFormat(const xcb_setup_t *setup,
                                    const xcb_depth_t *depth,
                                    video_format_t *restrict f)
{

    const xcb_visualtype_t *vt = xcb_depth_visuals(depth);

    for (int i = xcb_depth_visuals_length(depth); i > 0; i--, vt++)
        if (vlc_xcb_VisualToFormat(setup, depth->depth, vt, f))
            return vt->visual_id;

    return 0;
}
