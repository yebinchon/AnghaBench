
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_6__ {int recalculate; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;







 int pdf_field_type (int *,int *) ;
 int set_checkbox_value (int *,TYPE_1__*,int *,char const*) ;
 int set_validated_field_value (int *,TYPE_1__*,int *,char const*,int) ;
 int update_field_value (int *,TYPE_1__*,int *,char const*) ;

int pdf_set_field_value(fz_context *ctx, pdf_document *doc, pdf_obj *field, const char *text, int ignore_trigger_events)
{
 int accepted = 0;

 switch (pdf_field_type(ctx, field))
 {
 case 128:
 case 131:
 case 130:
  accepted = set_validated_field_value(ctx, doc, field, text, ignore_trigger_events);
  break;

 case 132:
 case 129:
  accepted = set_checkbox_value(ctx, doc, field, text);
  break;

 default:
  update_field_value(ctx, doc, field, text);
  accepted = 1;
  break;
 }

 if (!ignore_trigger_events)
  doc->recalculate = 1;

 return accepted;
}
