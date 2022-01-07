
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_font ;


 int Font ;
 int PDF_NAME (int ) ;
 int ctx ;
 int doc ;
 int fz_drop_font (int ,int *) ;
 unsigned char* fz_lookup_cjk_font (int ,int,int*,int*) ;
 int fz_lookup_cjk_ordering_by_language (char*) ;
 int * fz_new_font_from_memory (int ,int *,unsigned char const*,int,int,int ) ;
 int * pdf_add_cjk_font (int ,int ,int *,int,int,int) ;
 int * pdf_dict_get (int ,int *,int ) ;
 int pdf_dict_put_drop (int ,int *,int ,int *) ;
 int pdf_dict_puts (int ,int *,char*,int *) ;
 int pdf_drop_obj (int ,int *) ;
 int * pdf_new_dict (int ,int ,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void add_cjkfont_res(pdf_obj *resources, char *name, char *lang, char *wm, char *style)
{
 const unsigned char *data;
 int size, index, ordering, wmode, serif;
 fz_font *font;
 pdf_obj *subres, *ref;

 ordering = fz_lookup_cjk_ordering_by_language(lang);

 if (wm && !strcmp(wm, "V"))
  wmode = 1;
 else
  wmode = 0;

 if (style && (!strcmp(style, "sans") || !strcmp(style, "sans-serif")))
  serif = 0;
 else
  serif = 1;

 data = fz_lookup_cjk_font(ctx, ordering, &size, &index);
 font = fz_new_font_from_memory(ctx, ((void*)0), data, size, index, 0);

 subres = pdf_dict_get(ctx, resources, PDF_NAME(Font));
 if (!subres)
 {
  subres = pdf_new_dict(ctx, doc, 10);
  pdf_dict_put_drop(ctx, resources, PDF_NAME(Font), subres);
 }

 ref = pdf_add_cjk_font(ctx, doc, font, ordering, wmode, serif);
 pdf_dict_puts(ctx, subres, name, ref);
 pdf_drop_obj(ctx, ref);

 fz_drop_font(ctx, font);
}
