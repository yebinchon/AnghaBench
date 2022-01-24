#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int png_uint_32 ;
typedef  int /*<<< orphan*/  png_struct ;
typedef  int /*<<< orphan*/  png_info ;
typedef  int png_byte ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_2__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
typedef  TYPE_1__ MMRGBColor ;
typedef  int /*<<< orphan*/  MMPNGReadError ;
typedef  int /*<<< orphan*/ * MMBitmapRef ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int PNG_COLOR_MASK_ALPHA ; 
 int PNG_COLOR_TYPE_GRAY ; 
 int PNG_COLOR_TYPE_GRAY_ALPHA ; 
 int PNG_COLOR_TYPE_PALETTE ; 
 int /*<<< orphan*/  PNG_INFO_tRNS ; 
 int /*<<< orphan*/  PNG_LIBPNG_VER_STRING ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (int*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  kPNGAccessError ; 
 int /*<<< orphan*/  kPNGGenericError ; 
 int /*<<< orphan*/  kPNGInvalidHeaderError ; 
 int /*<<< orphan*/  kPNGReadError ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int* FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ) ; 

MMBitmapRef FUNC31(const char *path, MMPNGReadError *err)
{
	FILE *fp;
	uint8_t header[8];
	png_struct *png_ptr = NULL;
	png_info *info_ptr = NULL;
	png_byte bit_depth, color_type;
	uint8_t *row, *bitmapData;
	uint8_t bytesPerPixel;
	png_uint_32 width, height, y;
	uint32_t bytewidth;

	if ((fp = FUNC4(path, "rb")) == NULL) {
		if (err != NULL) *err = kPNGAccessError;
		return NULL;
	}

	/* Initialize error code to generic value. */
	if (err != NULL) *err = kPNGGenericError;

	/* Validate the PNG. */
	if (FUNC5(header, 1, sizeof header, fp) == 0) {
		if (err != NULL) *err = kPNGReadError;
		goto bail;
	} else if (FUNC29(header, 0, sizeof(header)) != 0) {
		if (err != NULL) *err = kPNGInvalidHeaderError;
		goto bail;
	}

	png_ptr = FUNC8(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
	if (png_ptr == NULL) goto bail;

	info_ptr = FUNC7(png_ptr);
	if (info_ptr == NULL) goto bail;

	/* Set up error handling. */
	if (FUNC30(FUNC17(png_ptr))) {
		goto bail;
	}

	FUNC16(png_ptr, fp);

	/* Skip past the header. */
	FUNC25(png_ptr, sizeof header);

	FUNC20(png_ptr, info_ptr);

	/* Convert different image types to common type to be read. */
	bit_depth = FUNC10(png_ptr, info_ptr);
	color_type = FUNC11(png_ptr, info_ptr);

	/* Convert color palettes to RGB. */
	if (color_type == PNG_COLOR_TYPE_PALETTE) {
		FUNC24(png_ptr);
	}

	/* Convert PNG to bit depth of 8. */
	if (color_type == PNG_COLOR_TYPE_GRAY && bit_depth < 8) {
		FUNC22(png_ptr);
	} else if (bit_depth == 16) {
		FUNC26(png_ptr);
	}

	/* Convert transparency chunk to alpha channel. */
	if (FUNC15(png_ptr, info_ptr, PNG_INFO_tRNS))  {
		FUNC28(png_ptr);
	}

	/* Convert gray images to RGB. */
	if (color_type == PNG_COLOR_TYPE_GRAY ||
	    color_type == PNG_COLOR_TYPE_GRAY_ALPHA) {
		FUNC23(png_ptr);
	}

	/* Ignore alpha for now. */
	if (color_type & PNG_COLOR_MASK_ALPHA) {
		FUNC27(png_ptr);
	}

	/* Get image attributes. */
	width = FUNC13(png_ptr, info_ptr);
	height = FUNC12(png_ptr, info_ptr);
	bytesPerPixel = 3; /* All images decompress to this size. */
	bytewidth = FUNC0(width * bytesPerPixel); /* Align width. */

	/* Decompress the PNG row by row. */
	bitmapData = FUNC1(1, bytewidth * height);
	row = FUNC18(png_ptr, FUNC14(png_ptr, info_ptr));
	if (bitmapData == NULL || row == NULL) goto bail;
	for (y = 0; y < height; ++y) {
		png_uint_32 x;
		const uint32_t rowOffset = y * bytewidth;
		uint8_t *rowptr = row;
		FUNC21(png_ptr, (png_byte *)row, NULL);

		for (x = 0; x < width; ++x) {
			const uint32_t colOffset = x * bytesPerPixel;
			MMRGBColor *color = (MMRGBColor *)(bitmapData + rowOffset + colOffset);
			color->red = *rowptr++;
			color->green = *rowptr++;
			color->blue = *rowptr++;
		}
	}
	FUNC6(row);

	/* Finish reading. */
	FUNC19(png_ptr, NULL);
	FUNC9(&png_ptr, &info_ptr, NULL);
	FUNC3(fp);

	return FUNC2(bitmapData, width, height,
	                      bytewidth, bytesPerPixel * 8, bytesPerPixel);

bail:
	FUNC9(&png_ptr, &info_ptr, NULL);
	FUNC3(fp);
	return NULL;
}