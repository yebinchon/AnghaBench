
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int CIDSystemInfo ;
 int Ordering ;
 int PDF_NAME (int ) ;
 int Registry ;
 int Supplement ;
 int * pdf_dict_put_dict (int *,int *,int ,int) ;
 int pdf_dict_put_int (int *,int *,int ,int) ;
 int pdf_dict_put_string (int *,int *,int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
pdf_add_cid_system_info(fz_context *ctx, pdf_document *doc, pdf_obj *fobj, const char *reg, const char *ord, int supp)
{
 pdf_obj *csi = pdf_dict_put_dict(ctx, fobj, PDF_NAME(CIDSystemInfo), 3);
 pdf_dict_put_string(ctx, csi, PDF_NAME(Registry), reg, strlen(reg));
 pdf_dict_put_string(ctx, csi, PDF_NAME(Ordering), ord, strlen(ord));
 pdf_dict_put_int(ctx, csi, PDF_NAME(Supplement), supp);
}
