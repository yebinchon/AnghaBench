
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ap; int obj; } ;
typedef TYPE_1__ pdf_annot ;
struct TYPE_9__ {scalar_t__ x1; scalar_t__ x0; scalar_t__ y1; scalar_t__ y0; } ;
typedef TYPE_2__ fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Rect ;
 int fz_pre_scale (int ,float,float) ;
 TYPE_2__ fz_transform_rect (TYPE_2__,int ) ;
 int fz_translate (float,float) ;
 TYPE_2__ pdf_dict_get_rect (int *,int ,int ) ;
 TYPE_2__ pdf_xobject_bbox (int *,int ) ;
 int pdf_xobject_matrix (int *,int ) ;

fz_matrix
pdf_annot_transform(fz_context *ctx, pdf_annot *annot)
{
 fz_rect bbox, rect;
 fz_matrix matrix;
 float w, h, x, y;

 rect = pdf_dict_get_rect(ctx, annot->obj, PDF_NAME(Rect));
 bbox = pdf_xobject_bbox(ctx, annot->ap);
 matrix = pdf_xobject_matrix(ctx, annot->ap);

 bbox = fz_transform_rect(bbox, matrix);
 if (bbox.x1 == bbox.x0)
  w = 0;
 else
  w = (rect.x1 - rect.x0) / (bbox.x1 - bbox.x0);
 if (bbox.y1 == bbox.y0)
  h = 0;
 else
  h = (rect.y1 - rect.y0) / (bbox.y1 - bbox.y0);
 x = rect.x0 - bbox.x0;
 y = rect.y0 - bbox.y0;

 return fz_pre_scale(fz_translate(x, y), w, h);
}
