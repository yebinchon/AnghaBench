
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_device ;
struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ gstate ;
typedef int fz_stroke_state ;
typedef int fz_rect ;
typedef int fz_path ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 TYPE_1__* CURRENT_GSTATE (int *) ;
 int fz_append_string (int *,int ,char*) ;
 int pdf_dev_ctm (int *,int *,int ) ;
 int pdf_dev_end_text (int *,int *) ;
 int pdf_dev_path (int *,int *,int const*) ;
 int pdf_dev_push (int *,int *) ;

__attribute__((used)) static void
pdf_dev_clip_stroke_path(fz_context *ctx, fz_device *dev, const fz_path *path, const fz_stroke_state *stroke, fz_matrix ctm, fz_rect scissor)
{
 pdf_device *pdev = (pdf_device*)dev;
 gstate *gs;

 pdf_dev_end_text(ctx, pdev);
 pdf_dev_push(ctx, pdev);




 pdf_dev_ctm(ctx, pdev, ctm);
 pdf_dev_path(ctx, pdev, path);
 gs = CURRENT_GSTATE(pdev);
 fz_append_string(ctx, gs->buf, "W n\n");
}
