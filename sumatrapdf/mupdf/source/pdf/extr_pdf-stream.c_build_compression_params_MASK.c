#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_13__ {int /*<<< orphan*/ * globals; } ;
struct TYPE_12__ {int predictor; int columns; int colors; int bpc; int early_change; } ;
struct TYPE_11__ {int predictor; int columns; int colors; int bpc; } ;
struct TYPE_10__ {int color_transform; } ;
struct TYPE_9__ {int k; int end_of_line; int encoded_byte_align; int columns; int rows; int end_of_block; int black_is_1; } ;
struct TYPE_14__ {TYPE_5__ jbig2; TYPE_4__ lzw; TYPE_3__ flate; TYPE_2__ jpeg; TYPE_1__ fax; } ;
struct TYPE_15__ {TYPE_6__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_7__ fz_compression_params ;

/* Variables and functions */
 int /*<<< orphan*/  BitsPerComponent ; 
 int /*<<< orphan*/  BlackIs1 ; 
 int /*<<< orphan*/  CCF ; 
 int /*<<< orphan*/  CCITTFaxDecode ; 
 int /*<<< orphan*/  ColorTransform ; 
 int /*<<< orphan*/  Colors ; 
 int /*<<< orphan*/  Columns ; 
 int /*<<< orphan*/  DCT ; 
 int /*<<< orphan*/  DCTDecode ; 
 int /*<<< orphan*/  EarlyChange ; 
 int /*<<< orphan*/  EncodedByteAlign ; 
 int /*<<< orphan*/  EndOfBlock ; 
 int /*<<< orphan*/  EndOfLine ; 
 int /*<<< orphan*/  FZ_IMAGE_FAX ; 
 int /*<<< orphan*/  FZ_IMAGE_FLATE ; 
 int /*<<< orphan*/  FZ_IMAGE_JBIG2 ; 
 int /*<<< orphan*/  FZ_IMAGE_JPEG ; 
 int /*<<< orphan*/  FZ_IMAGE_LZW ; 
 int /*<<< orphan*/  FZ_IMAGE_RAW ; 
 int /*<<< orphan*/  FZ_IMAGE_RLD ; 
 int /*<<< orphan*/  Fl ; 
 int /*<<< orphan*/  FlateDecode ; 
 int /*<<< orphan*/  JBIG2Decode ; 
 int /*<<< orphan*/  JBIG2Globals ; 
 int /*<<< orphan*/  K ; 
 int /*<<< orphan*/  LZW ; 
 int /*<<< orphan*/  LZWDecode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Predictor ; 
 int /*<<< orphan*/  RL ; 
 int /*<<< orphan*/  Rows ; 
 int /*<<< orphan*/  RunLengthDecode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(fz_context *ctx, pdf_obj *f, pdf_obj *p, fz_compression_params *params)
{
	int predictor = FUNC3(ctx, p, FUNC0(Predictor));
	pdf_obj *columns_obj = FUNC2(ctx, p, FUNC0(Columns));
	int columns = FUNC8(ctx, columns_obj);
	int colors = FUNC3(ctx, p, FUNC0(Colors));
	int bpc = FUNC3(ctx, p, FUNC0(BitsPerComponent));

	params->type = FZ_IMAGE_RAW;

	if (FUNC6(ctx, f, FUNC0(CCITTFaxDecode)) || FUNC6(ctx, f, FUNC0(CCF)))
	{
		pdf_obj *k = FUNC2(ctx, p, FUNC0(K));
		pdf_obj *eol = FUNC2(ctx, p, FUNC0(EndOfLine));
		pdf_obj *eba = FUNC2(ctx, p, FUNC0(EncodedByteAlign));
		pdf_obj *rows = FUNC2(ctx, p, FUNC0(Rows));
		pdf_obj *eob = FUNC2(ctx, p, FUNC0(EndOfBlock));
		pdf_obj *bi1 = FUNC2(ctx, p, FUNC0(BlackIs1));

		params->type = FZ_IMAGE_FAX;
		params->u.fax.k = (k ? FUNC8(ctx, k) : 0);
		params->u.fax.end_of_line = (eol ? FUNC7(ctx, eol) : 0);
		params->u.fax.encoded_byte_align = (eba ? FUNC7(ctx, eba) : 0);
		params->u.fax.columns = (columns_obj ? columns : 1728);
		params->u.fax.rows = (rows ? FUNC8(ctx, rows) : 0);
		params->u.fax.end_of_block = (eob ? FUNC7(ctx, eob) : 1);
		params->u.fax.black_is_1 = (bi1 ? FUNC7(ctx, bi1) : 0);
	}
	else if (FUNC6(ctx, f, FUNC0(DCTDecode)) || FUNC6(ctx, f, FUNC0(DCT)))
	{
		pdf_obj *ct = FUNC2(ctx, p, FUNC0(ColorTransform));

		params->type = FZ_IMAGE_JPEG;
		params->u.jpeg.color_transform = (ct ? FUNC8(ctx, ct) : -1);
	}
	else if (FUNC6(ctx, f, FUNC0(RunLengthDecode)) || FUNC6(ctx, f, FUNC0(RL)))
	{
		params->type = FZ_IMAGE_RLD;
	}
	else if (FUNC6(ctx, f, FUNC0(FlateDecode)) || FUNC6(ctx, f, FUNC0(Fl)))
	{
		params->type = FZ_IMAGE_FLATE;
		params->u.flate.predictor = predictor;
		params->u.flate.columns = columns;
		params->u.flate.colors = colors;
		params->u.flate.bpc = bpc;
	}
	else if (FUNC6(ctx, f, FUNC0(LZWDecode)) || FUNC6(ctx, f, FUNC0(LZW)))
	{
		pdf_obj *ec = FUNC2(ctx, p, FUNC0(EarlyChange));

		params->type = FZ_IMAGE_LZW;
		params->u.lzw.predictor = predictor;
		params->u.lzw.columns = columns;
		params->u.lzw.colors = colors;
		params->u.lzw.bpc = bpc;
		params->u.lzw.early_change = (ec ? FUNC8(ctx, ec) : 1);
	}
	else if (FUNC6(ctx, f, FUNC0(JBIG2Decode)))
	{
		pdf_obj *g = FUNC2(ctx, p, FUNC0(JBIG2Globals));

		params->type = FZ_IMAGE_JBIG2;
		params->u.jbig2.globals = NULL;
		if (g)
		{
			if (!FUNC4(ctx, g))
				FUNC1(ctx, "jbig2 globals is not a stream, skipping globals");
			else
				params->u.jbig2.globals = FUNC5(ctx, g);
		}
	}
}