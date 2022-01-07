
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_image ;


 int PDF_NAME (int ) ;
 int XObject ;
 int ctx ;
 int doc ;
 int fz_drop_image (int ,int *) ;
 int * fz_new_image_from_file (int ,char*) ;
 int * pdf_add_image (int ,int ,int *) ;
 int * pdf_dict_get (int ,int *,int ) ;
 int pdf_dict_put_drop (int ,int *,int ,int *) ;
 int pdf_dict_puts (int ,int *,char*,int *) ;
 int pdf_drop_obj (int ,int *) ;
 int * pdf_new_dict (int ,int ,int) ;

__attribute__((used)) static void add_image_res(pdf_obj *resources, char *name, char *path)
{
 fz_image *image;
 pdf_obj *subres, *ref;

 image = fz_new_image_from_file(ctx, path);

 subres = pdf_dict_get(ctx, resources, PDF_NAME(XObject));
 if (!subres)
 {
  subres = pdf_new_dict(ctx, doc, 10);
  pdf_dict_put_drop(ctx, resources, PDF_NAME(XObject), subres);
 }

 ref = pdf_add_image(ctx, doc, image);
 pdf_dict_puts(ctx, subres, name, ref);
 pdf_drop_obj(ctx, ref);

 fz_drop_image(ctx, image);
}
