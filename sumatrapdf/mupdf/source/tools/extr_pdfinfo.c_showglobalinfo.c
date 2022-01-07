
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
struct TYPE_3__ {int pagecount; int * doc; int * out; } ;
typedef TYPE_1__ globals ;
typedef int fz_output ;
typedef int fz_context ;


 int Encrypt ;
 int Info ;
 int PDF_NAME (int ) ;
 int fz_write_printf (int *,int *,char*,int,...) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_print_obj (int *,int *,int ,int,int) ;
 int pdf_resolve_indirect (int *,int *) ;
 int pdf_to_num (int *,int *) ;
 int pdf_trailer (int *,int *) ;
 int pdf_version (int *,int *) ;

__attribute__((used)) static void
showglobalinfo(fz_context *ctx, globals *glo)
{
 pdf_obj *obj;
 fz_output *out = glo->out;
 pdf_document *doc = glo->doc;
 int version = pdf_version(ctx, doc);

 fz_write_printf(ctx, out, "\nPDF-%d.%d\n", version / 10, version % 10);

 obj = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Info));
 if (obj)
 {
  fz_write_printf(ctx, out, "Info object (%d 0 R):\n", pdf_to_num(ctx, obj));
  pdf_print_obj(ctx, out, pdf_resolve_indirect(ctx, obj), 1, 1);
 }

 obj = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Encrypt));
 if (obj)
 {
  fz_write_printf(ctx, out, "\nEncryption object (%d 0 R):\n", pdf_to_num(ctx, obj));
  pdf_print_obj(ctx, out, pdf_resolve_indirect(ctx, obj), 1, 1);
 }

 fz_write_printf(ctx, out, "\nPages: %d\n\n", glo->pagecount);
}
