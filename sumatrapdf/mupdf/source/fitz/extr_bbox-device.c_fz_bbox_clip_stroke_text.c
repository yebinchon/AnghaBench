
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_text ;
typedef int fz_stroke_state ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_bbox_add_rect (int *,int *,int ,int) ;
 int fz_bound_text (int *,int const*,int const*,int ) ;

__attribute__((used)) static void
fz_bbox_clip_stroke_text(fz_context *ctx, fz_device *dev, const fz_text *text, const fz_stroke_state *stroke, fz_matrix ctm, fz_rect scissor)
{
 fz_bbox_add_rect(ctx, dev, fz_bound_text(ctx, text, stroke, ctm), 1);
}
