#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct info {int rbits; int gbits; int bbits; int abits; scalar_t__ width; scalar_t__ height; int compression; int bitcount; int offset; int /*<<< orphan*/  ashift; int /*<<< orphan*/  amask; int /*<<< orphan*/  bshift; int /*<<< orphan*/  bmask; int /*<<< orphan*/  gshift; int /*<<< orphan*/  gmask; int /*<<< orphan*/  rshift; int /*<<< orphan*/  rmask; scalar_t__ extramasks; int /*<<< orphan*/  filesize; } ;
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int BI_ALPHABITS ; 
 int BI_BITFIELDS ; 
 int BI_JPEG ; 
 int BI_PNG ; 
 int BI_RGB ; 
 int BI_RLE24 ; 
 int BI_RLE4 ; 
 int BI_RLE8 ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 scalar_t__ SHRT_MAX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct info*,int,int) ; 
 int FUNC13 (unsigned char const*) ; 

__attribute__((used)) static fz_pixmap *
FUNC14(fz_context *ctx, struct info *info, const unsigned char *p, size_t total, int only_metadata)
{
	const unsigned char *begin = p;
	const unsigned char *end = p + total;
	int size;

	FUNC12(info, 0x00, sizeof (*info));

	p = FUNC6(ctx, info, p, end);

	info->filesize = FUNC9(info->filesize, (int)total);

	if (end - p < 4)
		FUNC10(ctx, FZ_ERROR_GENERIC, "premature end in bitmap core header in bmp image");
	size = FUNC13(p + 0);

	if (size == 12)
		p = FUNC1(ctx, info, p, end);
	else if (size == 40 || size == 52 || size == 56 || size == 108 || size == 124)
	{
		p = FUNC2(ctx, info, p, end);
		if (info->extramasks)
			p = FUNC5(ctx, info, p, end);
	}
	else if (size == 16 || size == 64)
		p = FUNC3(ctx, info, p, end);
	else
		FUNC10(ctx, FZ_ERROR_GENERIC, "invalid header size (%d) in bmp image", size);

	FUNC11(info->rmask, &info->rshift, &info->rbits);
	FUNC11(info->gmask, &info->gshift, &info->gbits);
	FUNC11(info->bmask, &info->bshift, &info->bbits);
	FUNC11(info->amask, &info->ashift, &info->abits);

	if (info->width <= 0 || info->width > SHRT_MAX || info->height <= 0 || info->height > SHRT_MAX)
		FUNC10(ctx, FZ_ERROR_GENERIC, "dimensions (%d x %d) out of range in bmp image",
				info->width, info->height);
	if (info->compression != BI_RGB && info->compression != BI_RLE8 &&
			info->compression != BI_RLE4 && info->compression != BI_BITFIELDS &&
			info->compression != BI_JPEG && info->compression != BI_PNG &&
			info->compression != BI_ALPHABITS && info->compression != BI_RLE24)
		FUNC10(ctx, FZ_ERROR_GENERIC, "unsupported compression method (%d) in bmp image", info->compression);
	if ((info->compression == BI_RGB && info->bitcount != 1 &&
			info->bitcount != 2 && info->bitcount != 4 &&
			info->bitcount != 8 && info->bitcount != 16 &&
			info->bitcount != 24 && info->bitcount != 32) ||
			(info->compression == BI_RLE8 && info->bitcount != 8) ||
			(info->compression == BI_RLE4 && info->bitcount != 4) ||
			(info->compression == BI_BITFIELDS && info->bitcount != 16 && info->bitcount != 32) ||
			(info->compression == BI_JPEG && info->bitcount != 0) ||
			(info->compression == BI_PNG && info->bitcount != 0) ||
			(info->compression == BI_ALPHABITS && info->bitcount != 16 && info->bitcount != 32) ||
			(info->compression == BI_RLE24 && info->bitcount != 24))
		FUNC10(ctx, FZ_ERROR_GENERIC, "invalid bits per pixel (%d) for compression (%d) in bmp image",
				info->bitcount, info->compression);
	if (info->rbits < 0 || info->rbits > info->bitcount)
		FUNC10(ctx, FZ_ERROR_GENERIC, "unsupported %d bit red mask in bmp image", info->rbits);
	if (info->gbits < 0 || info->gbits > info->bitcount)
		FUNC10(ctx, FZ_ERROR_GENERIC, "unsupported %d bit green mask in bmp image", info->gbits);
	if (info->bbits < 0 || info->bbits > info->bitcount)
		FUNC10(ctx, FZ_ERROR_GENERIC, "unsupported %d bit blue mask in bmp image", info->bbits);
	if (info->abits < 0 || info->abits > info->bitcount)
		FUNC10(ctx, FZ_ERROR_GENERIC, "unsupported %d bit alpha mask in bmp image", info->abits);

	if (only_metadata)
		return NULL;

	if (info->compression == BI_JPEG)
	{
		if (p - begin < info->offset)
			p = begin + info->offset;
		return FUNC7(ctx, p, end - p);
	}
	else if (info->compression == BI_PNG)
	{
		if (p - begin < info->offset)
			p = begin + info->offset;
		return FUNC8(ctx, p, end - p);
	}
	else
	{
		const unsigned char *color_table_end = begin + info->offset;
		if (end - begin < info->offset)
			color_table_end = end;
		p = FUNC4(ctx, info, p, color_table_end);

		if (p - begin < info->offset)
			p = begin + info->offset;
		return FUNC0(ctx, info, p, end);
	}
}