
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int V ;
 int * find_head_of_field_group (int *,int *) ;
 int pdf_dict_put_text_string (int *,int *,int ,char const*) ;
 int pdf_field_mark_dirty (int *,int *) ;

__attribute__((used)) static void update_field_value(fz_context *ctx, pdf_document *doc, pdf_obj *obj, const char *text)
{
 pdf_obj *grp;

 if (!text)
  text = "";



 grp = find_head_of_field_group(ctx, obj);
 if (grp)
  obj = grp;

 pdf_dict_put_text_string(ctx, obj, PDF_NAME(V), text);

 pdf_field_mark_dirty(ctx, obj);
}
