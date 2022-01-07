
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_11__ {int x0; int y0; int x1; int y1; } ;
typedef TYPE_1__ fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;


 int CropBox ;
 int MediaBox ;
 int PDF_NAME (int ) ;
 int Rotate ;
 int UserUnit ;
 int fz_concat (int ,int ) ;
 TYPE_1__ fz_intersect_rect (TYPE_1__,TYPE_1__) ;
 scalar_t__ fz_is_empty_rect (TYPE_1__) ;
 void* fz_max (int,int) ;
 void* fz_min (int,int) ;
 int fz_pre_rotate (int ,int) ;
 int fz_scale (float,float) ;
 TYPE_1__ fz_transform_rect (TYPE_1__,int ) ;
 int fz_translate (int,int) ;
 TYPE_1__ fz_unit_rect ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_inheritable (int *,int *,int ) ;
 scalar_t__ pdf_is_real (int *,int *) ;
 int pdf_to_int (int *,int ) ;
 float pdf_to_real (int *,int *) ;
 TYPE_1__ pdf_to_rect (int *,int ) ;

void
pdf_page_obj_transform(fz_context *ctx, pdf_obj *pageobj, fz_rect *page_mediabox, fz_matrix *page_ctm)
{
 pdf_obj *obj;
 fz_rect mediabox, cropbox, realbox, pagebox;
 float userunit = 1;
 int rotate;

 if (!page_mediabox)
  page_mediabox = &pagebox;

 obj = pdf_dict_get(ctx, pageobj, PDF_NAME(UserUnit));
 if (pdf_is_real(ctx, obj))
  userunit = pdf_to_real(ctx, obj);

 mediabox = pdf_to_rect(ctx, pdf_dict_get_inheritable(ctx, pageobj, PDF_NAME(MediaBox)));
 if (fz_is_empty_rect(mediabox))
 {
  mediabox.x0 = 0;
  mediabox.y0 = 0;
  mediabox.x1 = 612;
  mediabox.y1 = 792;
 }

 cropbox = pdf_to_rect(ctx, pdf_dict_get_inheritable(ctx, pageobj, PDF_NAME(CropBox)));
 if (!fz_is_empty_rect(cropbox))
  mediabox = fz_intersect_rect(mediabox, cropbox);

 page_mediabox->x0 = fz_min(mediabox.x0, mediabox.x1);
 page_mediabox->y0 = fz_min(mediabox.y0, mediabox.y1);
 page_mediabox->x1 = fz_max(mediabox.x0, mediabox.x1);
 page_mediabox->y1 = fz_max(mediabox.y0, mediabox.y1);

 if (page_mediabox->x1 - page_mediabox->x0 < 1 || page_mediabox->y1 - page_mediabox->y0 < 1)
  *page_mediabox = fz_unit_rect;

 rotate = pdf_to_int(ctx, pdf_dict_get_inheritable(ctx, pageobj, PDF_NAME(Rotate)));


 if (rotate < 0)
  rotate = 360 - ((-rotate) % 360);
 if (rotate >= 360)
  rotate = rotate % 360;
 rotate = 90*((rotate + 45)/90);
 if (rotate >= 360)
  rotate = 0;





 *page_ctm = fz_scale(userunit, -userunit);


 *page_ctm = fz_pre_rotate(*page_ctm, -rotate);


 realbox = fz_transform_rect(*page_mediabox, *page_ctm);
 *page_ctm = fz_concat(*page_ctm, fz_translate(-realbox.x0, -realbox.y0));
}
