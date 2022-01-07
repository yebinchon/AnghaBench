
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int obj; } ;
typedef TYPE_1__ pdf_page ;
struct TYPE_20__ {int obj; } ;
typedef TYPE_2__ pdf_annot ;
struct TYPE_21__ {int member_0; int member_1; int member_2; int member_3; } ;
typedef TYPE_3__ fz_rect ;
struct TYPE_22__ {int member_0; int member_1; } ;
typedef TYPE_4__ fz_point ;
typedef int fz_context ;
typedef enum pdf_annot_type { ____Placeholder_pdf_annot_type } pdf_annot_type ;


 int F ;
 int P ;






 int PDF_ANNOT_IS_NO_ROTATE ;
 int PDF_ANNOT_IS_NO_ZOOM ;
 int PDF_ANNOT_IS_PRINT ;
 int PDF_NAME (int ) ;
 int Rotate ;
 TYPE_2__* pdf_create_annot_raw (int *,TYPE_1__*,int) ;
 int pdf_dict_get_inheritable (int *,int ,int ) ;
 int pdf_dict_put (int *,int ,int ,int ) ;
 int pdf_dict_put_int (int *,int ,int ,int) ;
 TYPE_2__* pdf_keep_annot (int *,TYPE_2__*) ;
 int pdf_set_annot_border (int *,TYPE_2__*,int) ;
 int pdf_set_annot_color (int *,TYPE_2__*,int,float const*) ;
 int pdf_set_annot_default_appearance (int *,TYPE_2__*,char*,int,float const*) ;
 int pdf_set_annot_line (int *,TYPE_2__*,TYPE_4__,TYPE_4__) ;
 int pdf_set_annot_rect (int *,TYPE_2__*,TYPE_3__) ;
 int pdf_to_int (int *,int ) ;

pdf_annot *
pdf_create_annot(fz_context *ctx, pdf_page *page, enum pdf_annot_type type)
{
 static const float black[3] = { 0, 0, 0 };
 static const float red[3] = { 1, 0, 0 };
 static const float green[3] = { 0, 1, 0 };
 static const float blue[3] = { 0, 0, 1 };
 static const float yellow[3] = { 1, 1, 0 };
 static const float magenta[3] = { 1, 0, 1 };

 int flags = PDF_ANNOT_IS_PRINT;

 pdf_annot *annot = pdf_create_annot_raw(ctx, page, type);

 switch (type)
 {
 default:
  break;

 case 129:
 case 141:
 case 134:
  {
   fz_rect icon_rect = { 12, 12, 12+20, 12+20 };
   flags = PDF_ANNOT_IS_PRINT | PDF_ANNOT_IS_NO_ZOOM | PDF_ANNOT_IS_NO_ROTATE;
   pdf_set_annot_rect(ctx, annot, icon_rect);
   pdf_set_annot_color(ctx, annot, 3, yellow);
  }
  break;

 case 140:
  {
   fz_rect text_rect = { 12, 12, 12+200, 12+100 };


   int rot = pdf_to_int(ctx, pdf_dict_get_inheritable(ctx, page->obj, PDF_NAME(Rotate)));
   if (rot != 0)
    pdf_dict_put_int(ctx, annot->obj, PDF_NAME(Rotate), rot);

   pdf_set_annot_rect(ctx, annot, text_rect);
   pdf_set_annot_border(ctx, annot, 0);
   pdf_set_annot_default_appearance(ctx, annot, "Helv", 12, black);
  }
  break;

 case 131:
  {
   fz_rect stamp_rect = { 12, 12, 12+190, 12+50 };
   pdf_set_annot_rect(ctx, annot, stamp_rect);
   pdf_set_annot_color(ctx, annot, 3, red);
  }
  break;

 case 143:
  {
   fz_rect caret_rect = { 12, 12, 12+18, 12+15 };
   pdf_set_annot_rect(ctx, annot, caret_rect);
   pdf_set_annot_color(ctx, annot, 3, blue);
  }
  break;

 case 137:
  {
   fz_point a = { 12, 12 }, b = { 12 + 100, 12 + 50 };
   pdf_set_annot_line(ctx, annot, a, b);
   pdf_set_annot_border(ctx, annot, 1);
   pdf_set_annot_color(ctx, annot, 3, red);
  }
  break;

 case 133:
 case 142:
  {
   fz_rect shape_rect = { 12, 12, 12+100, 12+50 };
   pdf_set_annot_rect(ctx, annot, shape_rect);
   pdf_set_annot_border(ctx, annot, 1);
   pdf_set_annot_color(ctx, annot, 3, red);
  }
  break;

 case 136:
 case 135:
 case 138:
  pdf_set_annot_border(ctx, annot, 1);
  pdf_set_annot_color(ctx, annot, 3, red);
  break;

 case 139:
  pdf_set_annot_color(ctx, annot, 3, yellow);
  break;
 case 128:
  pdf_set_annot_color(ctx, annot, 3, green);
  break;
 case 130:
  pdf_set_annot_color(ctx, annot, 3, red);
  break;
 case 132:
  pdf_set_annot_color(ctx, annot, 3, magenta);
  break;
 }

 pdf_dict_put(ctx, annot->obj, PDF_NAME(P), page->obj);
 pdf_dict_put_int(ctx, annot->obj, PDF_NAME(F), flags);

 return pdf_keep_annot(ctx, annot);
}
