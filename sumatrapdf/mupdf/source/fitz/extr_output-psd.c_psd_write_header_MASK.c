#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int w; int h; int s; int n; int alpha; int xres; int yres; int /*<<< orphan*/ * seps; int /*<<< orphan*/ * out; } ;
struct TYPE_13__ {int num_additive; TYPE_1__ super; } ;
typedef  TYPE_4__ psd_band_writer ;
typedef  int /*<<< orphan*/  fz_separations ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_11__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_12__ {TYPE_2__ icc; } ;
struct TYPE_14__ {int n; TYPE_3__ u; } ;
typedef  TYPE_5__ fz_colorspace ;
typedef  int /*<<< orphan*/  fz_band_writer ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_5__*,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 size_t FUNC10 (char const*) ; 

__attribute__((used)) static void
FUNC11(fz_context *ctx, fz_band_writer *writer_, fz_colorspace *cs)
{
	psd_band_writer *writer = (psd_band_writer *)(void *)writer_;
	fz_output *out = writer->super.out;
	int w = writer->super.w;
	int h = writer->super.h;
	int s = writer->super.s;
	int n = writer->super.n;
	int c = n - writer->super.alpha - s;
	fz_separations *seps = writer->super.seps;
	int i;
	size_t len;
	static const char psdsig[12] = { '8', 'B', 'P', 'S', 0, 1, 0, 0, 0, 0, 0, 0 };
	static const char ressig[4] = { '8', 'B', 'I', 'M' };
	unsigned char *data;
	size_t size;
	fz_colorspace *cs_cmyk = cs;

#if FZ_ENABLE_ICC
	size = fz_buffer_storage(ctx, cs->u.icc.buffer, &data);
#else
	size = 0;
	data = NULL;
#endif

	if (cs->n != 4)
		cs_cmyk = FUNC2(ctx);

	if (!FUNC1(ctx, cs))
		writer->num_additive = cs->n;

	/* File Header Section */
	FUNC7(ctx, out, psdsig, 12);
	FUNC8(ctx, out, n);
	FUNC9(ctx, out, h);
	FUNC9(ctx, out, w);
	FUNC8(ctx, out, 8); /* bits per channel */

	switch (c)
	{
	case 0:
	case 1:
		FUNC8(ctx, out, 1); /* Greyscale */
		break;
	case 3:
		FUNC8(ctx, out, 3); /* RGB */
		break;
	case 4:
		FUNC8(ctx, out, 4); /* CMYK */
		break;
	default:
		FUNC8(ctx, out, 7); /* Multichannel */
		break;
	}

	/* Color Mode Data Section - empty */
	FUNC9(ctx, out, 0);

	/* Image Resources Section - Spot Names, Equivalent colors, resolution, ICC Profile */
	/* Spot names */
	len = 0;
	for (i = 0; i < s; i++)
	{
		const char *name = FUNC4(ctx, seps, i);
		char text[32];
		size_t len2;
		if (name == NULL)
		{
			FUNC5(text, sizeof text, "Spot%d", i-4);
			name = text;
		}
		len2 = FUNC10(name);
		if (len2 > 255)
			len2 = 255;
		len += len2 + 1;
	}

	/* Write the size of all the following resources */
	FUNC9(ctx, out,
			(s ? 12 + ((len + 1)&~1) : 0) +	/* Spot Names */
			(s ? 12 + (14 * s) : 0) +	/* DisplayInfo */
			28 +				/* Resolutions */
			(size ? (size+19)&~1 : 0));	/* ICC Profile */

	/* Spot names */
	if (s != 0)
	{
		FUNC7(ctx, out, ressig, 4);
		FUNC8(ctx, out, 0x03EE);
		FUNC8(ctx, out, 0); /* PString */
		FUNC9(ctx, out, (len + 1)&~1);
		for (i = 0; i < s; i++) {
			size_t len2;
			const char *name = FUNC4(ctx, seps, i);
			char text[32];
			if (name == NULL)
			{
				FUNC5(text, sizeof text, "Spot%d", i-4);
				name = text;
			}
			len2 = FUNC10(name);
			if (len2 > 255)
				len2 = 255;
			FUNC6(ctx, out, len2);
			FUNC7(ctx, out, name, len2);
		}
		if (len & 1)
		{
			FUNC6(ctx, out, 0);
		}

		/* DisplayInfo - Colors for each spot channel */
		FUNC7(ctx, out, ressig, 4);
		FUNC8(ctx, out, 0x03EF);
		FUNC8(ctx, out, 0); /* PString */
		FUNC9(ctx, out, 14 * s); /* Length */
		for (i = 0; i < s; i++) {
			float cmyk[4];
			FUNC3(ctx, seps, i, cs_cmyk, cmyk, NULL, fz_default_color_params);
			FUNC8(ctx, out, 02); /* CMYK */
			/* PhotoShop stores all component values as if they were additive. */
			FUNC8(ctx, out, 65535 * (1-cmyk[0]));/* Cyan */
			FUNC8(ctx, out, 65535 * (1-cmyk[1]));/* Magenta */
			FUNC8(ctx, out, 65535 * (1-cmyk[2]));/* Yellow */
			FUNC8(ctx, out, 65535 * (1-cmyk[3]));/* Black */
			FUNC8(ctx, out, 0); /* Opacity 0 to 100 */
			FUNC6(ctx, out, 2); /* Don't know */
			FUNC6(ctx, out, 0); /* Padding - Always Zero */
		}
	}

	/* ICC Profile - (size + 19)&~1 bytes */
	if (size != 0)
	{
		/* Image Resource block */
		FUNC7(ctx, out, ressig, 4);
		FUNC8(ctx, out, 0x40f); /* ICC Profile */
		FUNC7(ctx, out, "\x07Profile", 8); /* Profile name (must be even!) */
		FUNC9(ctx, out, size);
		FUNC7(ctx, out, data, size); /* Actual data */
		if (size & 1)
			FUNC6(ctx, out, 0); /* Pad to even */
	}

	/* Image resolution - 28 bytes */
	FUNC7(ctx, out, ressig, 4);
	FUNC8(ctx, out, 0x03ED);
	FUNC8(ctx, out, 0); /* PString */
	FUNC9(ctx, out, 16); /* Length */
	/* Resolution is specified as a fixed 16.16 bits */
	FUNC9(ctx, out, writer->super.xres);
	FUNC8(ctx, out, 1); /* width:  1 --> resolution is pixels per inch */
	FUNC8(ctx, out, 1); /* width:  1 --> resolution is pixels per inch */
	FUNC9(ctx, out, writer->super.yres);
	FUNC8(ctx, out, 1); /* height:  1 --> resolution is pixels per inch */
	FUNC8(ctx, out, 1); /* height:  1 --> resolution is pixels per inch */

	/* Layer and Mask Information Section */
	FUNC9(ctx, out, 0);

	/* Image Data Section */
	FUNC8(ctx, out, 0); /* Raw image data */
}