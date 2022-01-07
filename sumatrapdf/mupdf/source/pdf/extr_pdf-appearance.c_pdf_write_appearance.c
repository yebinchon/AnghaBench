
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_19__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;
typedef int fz_buffer ;


 int FZ_ERROR_GENERIC ;
 int PDF_NAME (int ) ;
 int Subtype ;
 int fz_identity ;
 int fz_throw (int *,int ,char*,int ) ;
 int pdf_annot_type (int *,TYPE_1__*) ;
 int pdf_dict_get_name (int *,int ,int ) ;
 int pdf_write_caret_appearance (int *,TYPE_1__*,int *,int *,int *) ;
 int pdf_write_circle_appearance (int *,TYPE_1__*,int *,int *) ;
 int pdf_write_free_text_appearance (int *,TYPE_1__*,int *,int *,int *,int *,int **) ;
 int pdf_write_highlight_appearance (int *,TYPE_1__*,int *,int *,int **) ;
 int pdf_write_icon_appearance (int *,TYPE_1__*,int *,int *,int *) ;
 int pdf_write_ink_appearance (int *,TYPE_1__*,int *,int *) ;
 int pdf_write_line_appearance (int *,TYPE_1__*,int *,int *) ;
 int pdf_write_polygon_appearance (int *,TYPE_1__*,int *,int *,int) ;
 int pdf_write_redact_appearance (int *,TYPE_1__*,int *,int *) ;
 int pdf_write_square_appearance (int *,TYPE_1__*,int *,int *) ;
 int pdf_write_squiggly_appearance (int *,TYPE_1__*,int *,int *) ;
 int pdf_write_stamp_appearance (int *,TYPE_1__*,int *,int *,int *,int **) ;
 int pdf_write_strike_out_appearance (int *,TYPE_1__*,int *,int *) ;
 int pdf_write_underline_appearance (int *,TYPE_1__*,int *,int *) ;
 int pdf_write_widget_appearance (int *,TYPE_1__*,int *,int *,int *,int *,int **) ;

__attribute__((used)) static void
pdf_write_appearance(fz_context *ctx, pdf_annot *annot, fz_buffer *buf,
 fz_rect *rect, fz_rect *bbox, fz_matrix *matrix, pdf_obj **res)
{
 switch (pdf_annot_type(ctx, annot))
 {
 default:
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot create appearance stream for %s annotations",
   pdf_dict_get_name(ctx, annot->obj, PDF_NAME(Subtype)));
 case 128:
  pdf_write_widget_appearance(ctx, annot, buf, rect, bbox, matrix, res);
  break;
 case 140:
  pdf_write_ink_appearance(ctx, annot, buf, rect);
  *matrix = fz_identity;
  *bbox = *rect;
  break;
 case 138:
  pdf_write_polygon_appearance(ctx, annot, buf, rect, 1);
  *matrix = fz_identity;
  *bbox = *rect;
  break;
 case 137:
  pdf_write_polygon_appearance(ctx, annot, buf, rect, 0);
  *matrix = fz_identity;
  *bbox = *rect;
  break;
 case 139:
  pdf_write_line_appearance(ctx, annot, buf, rect);
  *matrix = fz_identity;
  *bbox = *rect;
  break;
 case 134:
  pdf_write_square_appearance(ctx, annot, buf, rect);
  *matrix = fz_identity;
  *bbox = *rect;
  break;
 case 144:
  pdf_write_circle_appearance(ctx, annot, buf, rect);
  *matrix = fz_identity;
  *bbox = *rect;
  break;
 case 145:
  pdf_write_caret_appearance(ctx, annot, buf, rect, bbox);
  *matrix = fz_identity;
  break;
 case 130:
 case 143:
 case 135:
  pdf_write_icon_appearance(ctx, annot, buf, rect, bbox);
  *matrix = fz_identity;
  break;
 case 141:
  pdf_write_highlight_appearance(ctx, annot, buf, rect, res);
  *matrix = fz_identity;
  *bbox = *rect;
  break;
 case 129:
  pdf_write_underline_appearance(ctx, annot, buf, rect);
  *matrix = fz_identity;
  *bbox = *rect;
  break;
 case 131:
  pdf_write_strike_out_appearance(ctx, annot, buf, rect);
  *matrix = fz_identity;
  *bbox = *rect;
  break;
 case 133:
  pdf_write_squiggly_appearance(ctx, annot, buf, rect);
  *matrix = fz_identity;
  *bbox = *rect;
  break;
 case 136:
  pdf_write_redact_appearance(ctx, annot, buf, rect);
  *matrix = fz_identity;
  *bbox = *rect;
  break;
 case 132:
  pdf_write_stamp_appearance(ctx, annot, buf, rect, bbox, res);
  *matrix = fz_identity;
  break;
 case 142:
  pdf_write_free_text_appearance(ctx, annot, buf, rect, bbox, matrix, res);
  break;
 }
}
