
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_13__ {int * globals; } ;
struct TYPE_12__ {int predictor; int columns; int colors; int bpc; int early_change; } ;
struct TYPE_11__ {int predictor; int columns; int colors; int bpc; } ;
struct TYPE_10__ {int color_transform; } ;
struct TYPE_9__ {int k; int end_of_line; int encoded_byte_align; int columns; int rows; int end_of_block; int black_is_1; } ;
struct TYPE_14__ {TYPE_5__ jbig2; TYPE_4__ lzw; TYPE_3__ flate; TYPE_2__ jpeg; TYPE_1__ fax; } ;
struct TYPE_15__ {TYPE_6__ u; int type; } ;
typedef TYPE_7__ fz_compression_params ;


 int BitsPerComponent ;
 int BlackIs1 ;
 int CCF ;
 int CCITTFaxDecode ;
 int ColorTransform ;
 int Colors ;
 int Columns ;
 int DCT ;
 int DCTDecode ;
 int EarlyChange ;
 int EncodedByteAlign ;
 int EndOfBlock ;
 int EndOfLine ;
 int FZ_IMAGE_FAX ;
 int FZ_IMAGE_FLATE ;
 int FZ_IMAGE_JBIG2 ;
 int FZ_IMAGE_JPEG ;
 int FZ_IMAGE_LZW ;
 int FZ_IMAGE_RAW ;
 int FZ_IMAGE_RLD ;
 int Fl ;
 int FlateDecode ;
 int JBIG2Decode ;
 int JBIG2Globals ;
 int K ;
 int LZW ;
 int LZWDecode ;
 int PDF_NAME (int ) ;
 int Predictor ;
 int RL ;
 int Rows ;
 int RunLengthDecode ;
 int fz_warn (int *,char*) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_int (int *,int *,int ) ;
 int pdf_is_stream (int *,int *) ;
 int * pdf_load_jbig2_globals (int *,int *) ;
 scalar_t__ pdf_name_eq (int *,int *,int ) ;
 int pdf_to_bool (int *,int *) ;
 int pdf_to_int (int *,int *) ;

__attribute__((used)) static void
build_compression_params(fz_context *ctx, pdf_obj *f, pdf_obj *p, fz_compression_params *params)
{
 int predictor = pdf_dict_get_int(ctx, p, PDF_NAME(Predictor));
 pdf_obj *columns_obj = pdf_dict_get(ctx, p, PDF_NAME(Columns));
 int columns = pdf_to_int(ctx, columns_obj);
 int colors = pdf_dict_get_int(ctx, p, PDF_NAME(Colors));
 int bpc = pdf_dict_get_int(ctx, p, PDF_NAME(BitsPerComponent));

 params->type = FZ_IMAGE_RAW;

 if (pdf_name_eq(ctx, f, PDF_NAME(CCITTFaxDecode)) || pdf_name_eq(ctx, f, PDF_NAME(CCF)))
 {
  pdf_obj *k = pdf_dict_get(ctx, p, PDF_NAME(K));
  pdf_obj *eol = pdf_dict_get(ctx, p, PDF_NAME(EndOfLine));
  pdf_obj *eba = pdf_dict_get(ctx, p, PDF_NAME(EncodedByteAlign));
  pdf_obj *rows = pdf_dict_get(ctx, p, PDF_NAME(Rows));
  pdf_obj *eob = pdf_dict_get(ctx, p, PDF_NAME(EndOfBlock));
  pdf_obj *bi1 = pdf_dict_get(ctx, p, PDF_NAME(BlackIs1));

  params->type = FZ_IMAGE_FAX;
  params->u.fax.k = (k ? pdf_to_int(ctx, k) : 0);
  params->u.fax.end_of_line = (eol ? pdf_to_bool(ctx, eol) : 0);
  params->u.fax.encoded_byte_align = (eba ? pdf_to_bool(ctx, eba) : 0);
  params->u.fax.columns = (columns_obj ? columns : 1728);
  params->u.fax.rows = (rows ? pdf_to_int(ctx, rows) : 0);
  params->u.fax.end_of_block = (eob ? pdf_to_bool(ctx, eob) : 1);
  params->u.fax.black_is_1 = (bi1 ? pdf_to_bool(ctx, bi1) : 0);
 }
 else if (pdf_name_eq(ctx, f, PDF_NAME(DCTDecode)) || pdf_name_eq(ctx, f, PDF_NAME(DCT)))
 {
  pdf_obj *ct = pdf_dict_get(ctx, p, PDF_NAME(ColorTransform));

  params->type = FZ_IMAGE_JPEG;
  params->u.jpeg.color_transform = (ct ? pdf_to_int(ctx, ct) : -1);
 }
 else if (pdf_name_eq(ctx, f, PDF_NAME(RunLengthDecode)) || pdf_name_eq(ctx, f, PDF_NAME(RL)))
 {
  params->type = FZ_IMAGE_RLD;
 }
 else if (pdf_name_eq(ctx, f, PDF_NAME(FlateDecode)) || pdf_name_eq(ctx, f, PDF_NAME(Fl)))
 {
  params->type = FZ_IMAGE_FLATE;
  params->u.flate.predictor = predictor;
  params->u.flate.columns = columns;
  params->u.flate.colors = colors;
  params->u.flate.bpc = bpc;
 }
 else if (pdf_name_eq(ctx, f, PDF_NAME(LZWDecode)) || pdf_name_eq(ctx, f, PDF_NAME(LZW)))
 {
  pdf_obj *ec = pdf_dict_get(ctx, p, PDF_NAME(EarlyChange));

  params->type = FZ_IMAGE_LZW;
  params->u.lzw.predictor = predictor;
  params->u.lzw.columns = columns;
  params->u.lzw.colors = colors;
  params->u.lzw.bpc = bpc;
  params->u.lzw.early_change = (ec ? pdf_to_int(ctx, ec) : 1);
 }
 else if (pdf_name_eq(ctx, f, PDF_NAME(JBIG2Decode)))
 {
  pdf_obj *g = pdf_dict_get(ctx, p, PDF_NAME(JBIG2Globals));

  params->type = FZ_IMAGE_JBIG2;
  params->u.jbig2.globals = ((void*)0);
  if (g)
  {
   if (!pdf_is_stream(ctx, g))
    fz_warn(ctx, "jbig2 globals is not a stream, skipping globals");
   else
    params->u.jbig2.globals = pdf_load_jbig2_globals(ctx, g);
  }
 }
}
