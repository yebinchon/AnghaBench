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
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
 int FZ_MAX_COLORS ; 
 int FUNC0 (char*) ; 
 float FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 float FUNC7 (float) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,float*,float*,float*,...) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (char*) ; 
 char* FUNC11 (char*,char*) ; 
 int FUNC12 (char) ; 

void
FUNC13(fz_context *ctx, xps_document *doc, char *base_uri, char *string,
		fz_colorspace **csp, float *samples)
{
	char *p;
	int i, n;
	char buf[1024];
	char *profile;

	*csp = FUNC4(ctx);

	samples[0] = 1;
	samples[1] = 0;
	samples[2] = 0;
	samples[3] = 0;

	if (string[0] == '#')
	{
		if (FUNC10(string) == 9)
		{
			samples[0] = FUNC12(string[1]) * 16 + FUNC12(string[2]);
			samples[1] = FUNC12(string[3]) * 16 + FUNC12(string[4]);
			samples[2] = FUNC12(string[5]) * 16 + FUNC12(string[6]);
			samples[3] = FUNC12(string[7]) * 16 + FUNC12(string[8]);
		}
		else
		{
			samples[0] = 255;
			samples[1] = FUNC12(string[1]) * 16 + FUNC12(string[2]);
			samples[2] = FUNC12(string[3]) * 16 + FUNC12(string[4]);
			samples[3] = FUNC12(string[5]) * 16 + FUNC12(string[6]);
		}

		samples[0] /= 255;
		samples[1] /= 255;
		samples[2] /= 255;
		samples[3] /= 255;
	}

	else if (string[0] == 's' && string[1] == 'c' && string[2] == '#')
	{
		if (FUNC0(string) == 2)
			FUNC8(string, "sc#%g,%g,%g", samples + 1, samples + 2, samples + 3);
		if (FUNC0(string) == 3)
			FUNC8(string, "sc#%g,%g,%g,%g", samples, samples + 1, samples + 2, samples + 3);

		/* Convert from scRGB gamma 1.0 to sRGB gamma */
		samples[1] = FUNC7(samples[1]);
		samples[2] = FUNC7(samples[2]);
		samples[3] = FUNC7(samples[3]);
	}

	else if (FUNC11(string, "ContextColor ") == string)
	{
		/* Crack the string for profile name and sample values */
		FUNC5(buf, string, sizeof buf);

		profile = FUNC9(buf, ' ');
		if (!profile)
		{
			FUNC6(ctx, "cannot find icc profile uri in '%s'", string);
			return;
		}

		*profile++ = 0;
		p = FUNC9(profile, ' ');
		if (!p)
		{
			FUNC6(ctx, "cannot find component values in '%s'", profile);
			return;
		}

		*p++ = 0;
		n = FUNC0(p) + 1;
		if (n > FZ_MAX_COLORS)
		{
			FUNC6(ctx, "ignoring %d color components (max %d allowed)", n - FZ_MAX_COLORS, FZ_MAX_COLORS);
			n = FZ_MAX_COLORS;
		}
		i = 0;
		while (i < n)
		{
			samples[i++] = FUNC1(p);
			p = FUNC9(p, ',');
			if (!p)
				break;
			p ++;
			if (*p == ' ')
				p ++;
		}
		while (i < n)
		{
			samples[i++] = 0;
		}

		/* TODO: load ICC profile */
		switch (n)
		{
		case 2: *csp = FUNC3(ctx); break;
		case 4: *csp = FUNC4(ctx); break;
		case 5: *csp = FUNC2(ctx); break;
		default: *csp = FUNC3(ctx); break;
		}
	}
}