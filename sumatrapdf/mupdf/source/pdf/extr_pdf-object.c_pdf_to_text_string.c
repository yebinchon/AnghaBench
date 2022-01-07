
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_2__ {char const* text; int len; int buf; } ;


 scalar_t__ OBJ_IS_STRING (int *) ;
 int RESOLVE (int *) ;
 TYPE_1__* STRING (int *) ;
 char const* pdf_new_utf8_from_pdf_string (int *,int ,int ) ;

const char *pdf_to_text_string(fz_context *ctx, pdf_obj *obj)
{
 RESOLVE(obj);
 if (OBJ_IS_STRING(obj))
 {
  if (!STRING(obj)->text)
   STRING(obj)->text = pdf_new_utf8_from_pdf_string(ctx, STRING(obj)->buf, STRING(obj)->len);
  return STRING(obj)->text;
 }
 return "";
}
