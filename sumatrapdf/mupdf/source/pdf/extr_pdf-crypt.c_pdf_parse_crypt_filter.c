
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_5__ {int length; void* method; } ;
typedef TYPE_1__ pdf_crypt_filter ;
struct TYPE_6__ {int length; int r; int * cf; } ;
typedef TYPE_2__ pdf_crypt ;
typedef int fz_context ;


 int AESV2 ;
 int AESV3 ;
 int CFM ;
 int FZ_ERROR_GENERIC ;
 int Identity ;
 int Length ;
 int None ;
 void* PDF_CRYPT_AESV2 ;
 void* PDF_CRYPT_AESV3 ;
 void* PDF_CRYPT_NONE ;
 void* PDF_CRYPT_RC4 ;
 int * PDF_NAME (int ) ;
 int StdCF ;
 int V2 ;
 int fz_throw (int *,int ,char*,int) ;
 int fz_warn (int *,char*,int ) ;
 int * pdf_dict_get (int *,int *,int *) ;
 scalar_t__ pdf_is_dict (int *,int *) ;
 scalar_t__ pdf_is_int (int *,int *) ;
 scalar_t__ pdf_is_name (int *,int *) ;
 int pdf_name_eq (int *,int *,int *) ;
 int pdf_to_int (int *,int *) ;
 int pdf_to_name (int *,int *) ;
 int pdf_to_num (int *,int *) ;

__attribute__((used)) static void
pdf_parse_crypt_filter(fz_context *ctx, pdf_crypt_filter *cf, pdf_crypt *crypt, pdf_obj *name)
{
 pdf_obj *obj;
 pdf_obj *dict;
 int is_identity = (pdf_name_eq(ctx, name, PDF_NAME(Identity)));
 int is_stdcf = (!is_identity && pdf_name_eq(ctx, name, PDF_NAME(StdCF)));

 if (!is_identity && !is_stdcf)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Crypt Filter not Identity or StdCF (%d 0 R)", pdf_to_num(ctx, crypt->cf));

 cf->method = PDF_CRYPT_NONE;
 cf->length = crypt->length;

 if (!crypt->cf)
 {
  cf->method = (is_identity ? PDF_CRYPT_NONE : PDF_CRYPT_RC4);
  return;
 }

 dict = pdf_dict_get(ctx, crypt->cf, name);
 if (pdf_is_dict(ctx, dict))
 {
  obj = pdf_dict_get(ctx, dict, PDF_NAME(CFM));
  if (pdf_is_name(ctx, obj))
  {
   if (pdf_name_eq(ctx, PDF_NAME(None), obj))
    cf->method = PDF_CRYPT_NONE;
   else if (pdf_name_eq(ctx, PDF_NAME(V2), obj))
    cf->method = PDF_CRYPT_RC4;
   else if (pdf_name_eq(ctx, PDF_NAME(AESV2), obj))
    cf->method = PDF_CRYPT_AESV2;
   else if (pdf_name_eq(ctx, PDF_NAME(AESV3), obj))
    cf->method = PDF_CRYPT_AESV3;
   else
    fz_warn(ctx, "unknown encryption method: %s", pdf_to_name(ctx, obj));
  }

  obj = pdf_dict_get(ctx, dict, PDF_NAME(Length));
  if (pdf_is_int(ctx, obj))
   cf->length = pdf_to_int(ctx, obj);
 }
 else if (!is_identity)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot parse crypt filter (%d 0 R)", pdf_to_num(ctx, crypt->cf));


 if (cf->length < 40)
  cf->length = cf->length * 8;

 if ((cf->length % 8) != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "invalid key length: %d", cf->length);

 if ((crypt->r == 1 || crypt->r == 2 || crypt->r == 3 || crypt->r == 4) &&
  (cf->length < 40 || cf->length > 128))
  fz_throw(ctx, FZ_ERROR_GENERIC, "invalid key length: %d", cf->length);
 if ((crypt->r == 5 || crypt->r == 6) && cf->length != 256)
  fz_throw(ctx, FZ_ERROR_GENERIC, "invalid key length: %d", cf->length);
}
