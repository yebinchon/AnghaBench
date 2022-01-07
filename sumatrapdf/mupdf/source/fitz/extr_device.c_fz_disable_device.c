
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * end_layer; int * begin_layer; int * set_default_colorspaces; int * render_flags; int * end_tile; int * begin_tile; int * end_group; int * begin_group; int * end_mask; int * begin_mask; int * pop_clip; int * clip_image_mask; int * fill_image_mask; int * fill_image; int * fill_shade; int * ignore_text; int * clip_stroke_text; int * clip_text; int * stroke_text; int * fill_text; int * clip_stroke_path; int * clip_path; int * stroke_path; int * fill_path; int * close_device; } ;
typedef TYPE_1__ fz_device ;
typedef int fz_context ;



__attribute__((used)) static void
fz_disable_device(fz_context *ctx, fz_device *dev)
{
 dev->close_device = ((void*)0);
 dev->fill_path = ((void*)0);
 dev->stroke_path = ((void*)0);
 dev->clip_path = ((void*)0);
 dev->clip_stroke_path = ((void*)0);
 dev->fill_text = ((void*)0);
 dev->stroke_text = ((void*)0);
 dev->clip_text = ((void*)0);
 dev->clip_stroke_text = ((void*)0);
 dev->ignore_text = ((void*)0);
 dev->fill_shade = ((void*)0);
 dev->fill_image = ((void*)0);
 dev->fill_image_mask = ((void*)0);
 dev->clip_image_mask = ((void*)0);
 dev->pop_clip = ((void*)0);
 dev->begin_mask = ((void*)0);
 dev->end_mask = ((void*)0);
 dev->begin_group = ((void*)0);
 dev->end_group = ((void*)0);
 dev->begin_tile = ((void*)0);
 dev->end_tile = ((void*)0);
 dev->render_flags = ((void*)0);
 dev->set_default_colorspaces = ((void*)0);
 dev->begin_layer = ((void*)0);
 dev->end_layer = ((void*)0);
}
