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
struct tiff {int imagelength; int stride; unsigned char* samples; int compression; int predictor; int imagewidth; int samplesperpixel; int bitspersample; int photometric; int extrasamples; scalar_t__ order; scalar_t__ colormap; scalar_t__ stripbytecounts; scalar_t__ stripoffsets; scalar_t__ rowsperstrip; scalar_t__ tilebytecounts; scalar_t__ tileoffsets; scalar_t__ tilewidth; scalar_t__ tilelength; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FZ_ERROR_MEMORY ; 
 scalar_t__ TII ; 
 int UINT_MAX ; 
 unsigned char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tiff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct tiff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct tiff*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct tiff*) ; 

__attribute__((used)) static void
FUNC11(fz_context *ctx, struct tiff *tiff)
{
	unsigned i;

	if (tiff->imagelength > UINT_MAX / tiff->stride)
		FUNC1(ctx, FZ_ERROR_MEMORY, "image too large");
	tiff->samples = FUNC0(ctx, tiff->imagelength * tiff->stride);
	FUNC2(tiff->samples, 0x55, tiff->imagelength * tiff->stride);

	if (tiff->tilelength && tiff->tilewidth && tiff->tileoffsets && tiff->tilebytecounts)
		FUNC4(ctx, tiff);
	else if (tiff->rowsperstrip && tiff->stripoffsets && tiff->stripbytecounts)
		FUNC3(ctx, tiff);
	else
		FUNC1(ctx, FZ_ERROR_GENERIC, "image is missing both strip and tile data");

	/* Predictor (only for LZW and Flate) */
	if ((tiff->compression == 5 || tiff->compression == 8 || tiff->compression == 32946) && tiff->predictor == 2)
	{
		unsigned char *p = tiff->samples;
		for (i = 0; i < tiff->imagelength; i++)
		{
			FUNC9(p, tiff->imagewidth, tiff->samplesperpixel, tiff->bitspersample);
			p += tiff->stride;
		}
	}

	/* YCbCr -> RGB, but JPEG already has done this conversion  */
	if (tiff->photometric == 6 && tiff->compression != 6 && tiff->compression != 7)
		FUNC10(ctx, tiff);

	/* RGBPal */
	if (tiff->photometric == 3 && tiff->colormap)
		FUNC5(ctx, tiff);

	/* WhiteIsZero .. invert */
	if (tiff->photometric == 0)
	{
		unsigned char *p = tiff->samples;
		for (i = 0; i < tiff->imagelength; i++)
		{
			FUNC6(p, tiff->imagewidth, tiff->samplesperpixel, tiff->bitspersample, tiff->extrasamples);
			p += tiff->stride;
		}
	}

	/* Premultiplied transparency */
	if (tiff->extrasamples == 1)
	{
		/* In GhostXPS we undo the premultiplication here; muxps holds
		 * all our images premultiplied by default, so nothing to do.
		 */
	}

	/* Non-premultiplied transparency */
	if (tiff->extrasamples == 2)
	{
		/* Premultiplied files are corrected for elsewhere */
	}

	/* Byte swap 16-bit images to big endian if necessary */
	if (tiff->bitspersample == 16 && tiff->order == TII)
		FUNC8(tiff->samples, tiff->imagewidth * tiff->imagelength * tiff->samplesperpixel);

	/* Lab colorspace expects all sample components 0..255.
	TIFF supplies them as L = 0..255, a/b = -128..127 (for
	8 bits per sample, -32768..32767 for 16 bits per sample)
	Scale them to the colorspace's expectations. */
	if (tiff->photometric == 8 && tiff->samplesperpixel == 3)
		FUNC7(ctx, tiff->samples, tiff->bitspersample, tiff->imagewidth * tiff->imagelength);
}