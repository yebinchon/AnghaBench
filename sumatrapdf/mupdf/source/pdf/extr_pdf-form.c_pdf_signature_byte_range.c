
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_5__ {int file_size; } ;
typedef TYPE_1__ pdf_document ;
struct TYPE_6__ {int offset; int length; } ;
typedef TYPE_2__ fz_range ;
typedef int fz_context ;


 int ByteRange ;
 int FZ_ERROR_GENERIC ;
 int PDF_NAME (int ) ;
 int V ;
 int fz_throw (int *,int ,char*) ;
 int pdf_array_get_int (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_getl (int *,int *,int ,int ,int *) ;

int pdf_signature_byte_range(fz_context *ctx, pdf_document *doc, pdf_obj *signature, fz_range *byte_range)
{
 pdf_obj *br = pdf_dict_getl(ctx, signature, PDF_NAME(V), PDF_NAME(ByteRange), ((void*)0));
 int i, n = pdf_array_len(ctx, br)/2;

 if (byte_range)
 {
  for (i = 0; i < n; i++)
  {
   int offset = pdf_array_get_int(ctx, br, 2*i);
   int length = pdf_array_get_int(ctx, br, 2*i+1);

   if (offset < 0 || offset > doc->file_size)
    fz_throw(ctx, FZ_ERROR_GENERIC, "offset of signature byte range outside of file");
   else if (length < 0)
    fz_throw(ctx, FZ_ERROR_GENERIC, "length of signature byte range negative");
   else if (offset + length > doc->file_size)
    fz_throw(ctx, FZ_ERROR_GENERIC, "signature byte range extends past end of file");

   byte_range[i].offset = offset;
   byte_range[i].length = length;
  }
 }

 return n;
}
