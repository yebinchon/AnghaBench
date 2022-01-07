
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int size; } ;
typedef TYPE_1__ pdf_font_desc ;
typedef int pdf_document ;
typedef int fz_context ;


 int assert (int ) ;
 TYPE_1__* fz_find_item (int *,int ,int *,int *) ;
 TYPE_1__* fz_store_item (int *,int *,TYPE_1__*,int ,int *) ;
 int hail_mary_store_key ;
 int hail_mary_store_type ;
 int pdf_drop_font_imp ;
 TYPE_1__* pdf_load_simple_font (int *,int *,int *) ;

pdf_font_desc *
pdf_load_hail_mary_font(fz_context *ctx, pdf_document *doc)
{
 pdf_font_desc *fontdesc;
 pdf_font_desc *existing;

 if ((fontdesc = fz_find_item(ctx, pdf_drop_font_imp, &hail_mary_store_key, &hail_mary_store_type)) != ((void*)0))
 {
  return fontdesc;
 }


 fontdesc = pdf_load_simple_font(ctx, doc, ((void*)0));

 existing = fz_store_item(ctx, &hail_mary_store_key, fontdesc, fontdesc->size, &hail_mary_store_type);
 assert(existing == ((void*)0));
 (void)existing;

 return fontdesc;
}
