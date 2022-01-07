
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_4__ {int fonts; } ;
struct TYPE_5__ {TYPE_1__ resources; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_context ;


 int * fz_hash_insert (int *,int ,unsigned char*,int *) ;
 int fz_warn (int *,char*) ;
 int * pdf_keep_obj (int *,int *) ;

pdf_obj *
pdf_insert_font_resource(fz_context *ctx, pdf_document *doc, unsigned char digest[16], pdf_obj *obj)
{
 pdf_obj *res = fz_hash_insert(ctx, doc->resources.fonts, digest, obj);
 if (res)
  fz_warn(ctx, "warning: font resource already present");
 else
  res = pdf_keep_obj(ctx, obj);
 return pdf_keep_obj(ctx, res);
}
