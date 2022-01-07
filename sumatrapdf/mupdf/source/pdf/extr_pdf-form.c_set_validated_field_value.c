
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_6__ {int dirty; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 scalar_t__ pdf_field_dirties_document (int *,TYPE_1__*,int *) ;
 int pdf_field_event_validate (int *,TYPE_1__*,int *,char const*) ;
 int update_field_value (int *,TYPE_1__*,int *,char const*) ;

__attribute__((used)) static int set_validated_field_value(fz_context *ctx, pdf_document *doc, pdf_obj *field, const char *text, int ignore_trigger_events)
{
 if (!ignore_trigger_events)
 {
  if (!pdf_field_event_validate(ctx, doc, field, text))
   return 0;
 }

 if (pdf_field_dirties_document(ctx, doc, field))
  doc->dirty = 1;
 update_field_value(ctx, doc, field, text);

 return 1;
}
