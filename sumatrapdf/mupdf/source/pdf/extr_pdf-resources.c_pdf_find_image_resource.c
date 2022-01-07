
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_5__ {scalar_t__ images; } ;
struct TYPE_6__ {TYPE_1__ resources; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_image ;
typedef int fz_context ;


 int * fz_hash_find (int *,scalar_t__,unsigned char*) ;
 int fz_md5_image (int *,int *,unsigned char*) ;
 scalar_t__ fz_new_hash_table (int *,int,int,int,int ) ;
 int pdf_drop_obj_as_void ;
 int pdf_keep_obj (int *,int *) ;
 int pdf_preload_image_resources (int *,TYPE_2__*) ;

pdf_obj *
pdf_find_image_resource(fz_context *ctx, pdf_document *doc, fz_image *item, unsigned char digest[16])
{
 pdf_obj *res;

 if (!doc->resources.images)
 {
  doc->resources.images = fz_new_hash_table(ctx, 4096, 16, -1, pdf_drop_obj_as_void);
  pdf_preload_image_resources(ctx, doc);
 }


 fz_md5_image(ctx, item, digest);
 res = fz_hash_find(ctx, doc->resources.images, digest);
 if (res)
  pdf_keep_obj(ctx, res);
 return res;
}
