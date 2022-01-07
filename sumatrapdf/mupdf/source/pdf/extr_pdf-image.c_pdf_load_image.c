
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_image ;
typedef int fz_context ;


 int fz_drop_image_imp ;
 int fz_image_size (int *,int *) ;
 int * pdf_find_item (int *,int ,int *) ;
 int * pdf_load_image_imp (int *,int *,int *,int *,int *,int ) ;
 int pdf_store_item (int *,int *,int *,int ) ;

fz_image *
pdf_load_image(fz_context *ctx, pdf_document *doc, pdf_obj *dict)
{
 fz_image *image;

 if ((image = pdf_find_item(ctx, fz_drop_image_imp, dict)) != ((void*)0))
  return image;

 image = pdf_load_image_imp(ctx, doc, ((void*)0), dict, ((void*)0), 0);
 pdf_store_item(ctx, dict, image, fz_image_size(ctx, image));
 return image;
}
