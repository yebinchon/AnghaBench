
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
typedef TYPE_1__ pdf_run_processor ;
typedef int pdf_processor ;
typedef int pdf_obj ;
typedef int fz_context ;


 int Name ;
 int PDF_NAME (int ) ;
 int fz_begin_layer (int *,int ,char const*) ;
 char* pdf_dict_get_text_string (int *,int *,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void pdf_run_BDC(fz_context *ctx, pdf_processor *proc, const char *tag, pdf_obj *raw, pdf_obj *cooked)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 const char *str;

 if (!tag)
  tag = "Untitled";

 str = pdf_dict_get_text_string(ctx, cooked, PDF_NAME(Name));
 if (strlen(str) == 0)
  str = tag;

 fz_begin_layer(ctx, pr->dev, str);
}
