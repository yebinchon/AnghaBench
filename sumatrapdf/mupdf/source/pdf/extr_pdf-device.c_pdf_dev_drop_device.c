
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_gstates; int num_cid_fonts; int num_groups; TYPE_2__* gstates; TYPE_2__* alphas; TYPE_2__* groups; TYPE_2__* image_indices; TYPE_2__* cid_fonts; int resources; } ;
typedef TYPE_1__ pdf_device ;
typedef int fz_device ;
typedef int fz_context ;
struct TYPE_5__ {int colorspace; int ref; int stroke_state; int buf; } ;


 int fz_drop_buffer (int *,int ) ;
 int fz_drop_colorspace (int *,int ) ;
 int fz_drop_font (int *,TYPE_2__) ;
 int fz_drop_stroke_state (int *,int ) ;
 int fz_free (int *,TYPE_2__*) ;
 int pdf_drop_obj (int *,int ) ;

__attribute__((used)) static void
pdf_dev_drop_device(fz_context *ctx, fz_device *dev)
{
 pdf_device *pdev = (pdf_device*)dev;
 int i;

 for (i = pdev->num_gstates-1; i >= 0; i--)
 {
  fz_drop_buffer(ctx, pdev->gstates[i].buf);
  fz_drop_stroke_state(ctx, pdev->gstates[i].stroke_state);
 }

 for (i = pdev->num_cid_fonts-1; i >= 0; i--)
  fz_drop_font(ctx, pdev->cid_fonts[i]);

 for (i = pdev->num_groups - 1; i >= 0; i--)
 {
  pdf_drop_obj(ctx, pdev->groups[i].ref);
  fz_drop_colorspace(ctx, pdev->groups[i].colorspace);
 }

 pdf_drop_obj(ctx, pdev->resources);
 fz_free(ctx, pdev->cid_fonts);
 fz_free(ctx, pdev->image_indices);
 fz_free(ctx, pdev->groups);
 fz_free(ctx, pdev->alphas);
 fz_free(ctx, pdev->gstates);
}
