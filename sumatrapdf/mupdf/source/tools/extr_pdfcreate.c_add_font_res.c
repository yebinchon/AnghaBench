
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_font ;


 int Font ;
 int PDF_NAME (int ) ;
 int PDF_SIMPLE_ENCODING_CYRILLIC ;
 int PDF_SIMPLE_ENCODING_GREEK ;
 int PDF_SIMPLE_ENCODING_LATIN ;
 int ctx ;
 int doc ;
 int fz_drop_font (int ,int *) ;
 unsigned char* fz_lookup_base14_font (int ,char*,int*) ;
 int * fz_new_font_from_file (int ,int *,char*,int ,int ) ;
 int * fz_new_font_from_memory (int ,char*,unsigned char const*,int,int ,int ) ;
 int * pdf_add_simple_font (int ,int ,int *,int) ;
 int * pdf_dict_get (int ,int *,int ) ;
 int pdf_dict_put_drop (int ,int *,int ,int *) ;
 int pdf_dict_puts (int ,int *,char*,int *) ;
 int pdf_drop_obj (int ,int *) ;
 int * pdf_new_dict (int ,int ,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void add_font_res(pdf_obj *resources, char *name, char *path, char *encname)
{
 const unsigned char *data;
 int size, enc;
 fz_font *font;
 pdf_obj *subres, *ref;

 data = fz_lookup_base14_font(ctx, path, &size);
 if (data)
  font = fz_new_font_from_memory(ctx, path, data, size, 0, 0);
 else
  font = fz_new_font_from_file(ctx, ((void*)0), path, 0, 0);

 subres = pdf_dict_get(ctx, resources, PDF_NAME(Font));
 if (!subres)
 {
  subres = pdf_new_dict(ctx, doc, 10);
  pdf_dict_put_drop(ctx, resources, PDF_NAME(Font), subres);
 }

 enc = PDF_SIMPLE_ENCODING_LATIN;
 if (encname)
 {
  if (!strcmp(encname, "Latin") || !strcmp(encname, "Latn"))
   enc = PDF_SIMPLE_ENCODING_LATIN;
  else if (!strcmp(encname, "Greek") || !strcmp(encname, "Grek"))
   enc = PDF_SIMPLE_ENCODING_GREEK;
  else if (!strcmp(encname, "Cyrillic") || !strcmp(encname, "Cyrl"))
   enc = PDF_SIMPLE_ENCODING_CYRILLIC;
 }

 ref = pdf_add_simple_font(ctx, doc, font, enc);
 pdf_dict_puts(ctx, subres, name, ref);
 pdf_drop_obj(ctx, ref);

 fz_drop_font(ctx, font);
}
