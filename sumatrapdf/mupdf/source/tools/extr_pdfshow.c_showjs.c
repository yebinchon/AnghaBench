
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;


 int JS ;
 int JavaScript ;
 int PDF_NAME (int ) ;
 int ctx ;
 int doc ;
 int fz_free (int ,char*) ;
 int fz_write_printf (int ,int ,char*,int ) ;
 int out ;
 int * pdf_dict_get (int ,int *,int ) ;
 int * pdf_dict_get_key (int ,int *,int) ;
 int * pdf_dict_get_val (int ,int *,int) ;
 int pdf_dict_len (int ,int *) ;
 int * pdf_load_name_tree (int ,int ,int ) ;
 char* pdf_load_stream_or_string_as_utf8 (int ,int *) ;
 int pdf_to_name (int ,int *) ;
 int showtext (char*,int ) ;

__attribute__((used)) static void showjs(void)
{
 pdf_obj *tree;
 int i;

 tree = pdf_load_name_tree(ctx, doc, PDF_NAME(JavaScript));
 for (i = 0; i < pdf_dict_len(ctx, tree); ++i)
 {
  pdf_obj *name = pdf_dict_get_key(ctx, tree, i);
  pdf_obj *action = pdf_dict_get_val(ctx, tree, i);
  pdf_obj *js = pdf_dict_get(ctx, action, PDF_NAME(JS));
  char *src = pdf_load_stream_or_string_as_utf8(ctx, js);
  fz_write_printf(ctx, out, "// %s\n", pdf_to_name(ctx, name));
  showtext(src, 0);
  fz_free(ctx, src);
 }
}
