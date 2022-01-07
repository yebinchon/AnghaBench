
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_4__ {int recalculate; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 int AS ;
 int Off ;
 int PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF ;
 int PDF_BTN_FIELD_IS_RADIO ;
 int * PDF_NAME (int ) ;
 int V ;
 int * find_head_of_field_group (int *,int *) ;
 int * pdf_button_field_on_state (int *,int *) ;
 int * pdf_dict_get (int *,int *,int *) ;
 int pdf_dict_put (int *,int *,int *,int *) ;
 int pdf_field_flags (int *,int *) ;
 int set_check_grp (int *,TYPE_1__*,int *,int *) ;

__attribute__((used)) static void toggle_check_box(fz_context *ctx, pdf_document *doc, pdf_obj *field)
{
 int ff = pdf_field_flags(ctx, field);
 int is_radio = (ff & PDF_BTN_FIELD_IS_RADIO);
 int is_no_toggle_to_off = (ff & PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF);
 pdf_obj *grp, *as, *val;

 grp = find_head_of_field_group(ctx, field);
 if (!grp)
  grp = field;


 as = pdf_dict_get(ctx, field, PDF_NAME(AS));
 if (as && as != PDF_NAME(Off))
 {
  if (is_radio && is_no_toggle_to_off)
   return;
  val = PDF_NAME(Off);
 }
 else
 {
  val = pdf_button_field_on_state(ctx, field);
 }

 pdf_dict_put(ctx, grp, PDF_NAME(V), val);
 set_check_grp(ctx, doc, grp, val);
 doc->recalculate = 1;
}
