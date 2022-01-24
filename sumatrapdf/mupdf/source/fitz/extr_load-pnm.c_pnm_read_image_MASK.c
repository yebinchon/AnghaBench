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
struct info {int /*<<< orphan*/  subimages; void* cs; } ;
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*,int,unsigned char const**) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*,int,int,unsigned char const**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*,int,int,unsigned char const**) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *,unsigned char const*,unsigned char const*,char*) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ *,unsigned char const*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static fz_pixmap *
FUNC9(fz_context *ctx, struct info *pnm, const unsigned char *p, size_t total, int onlymeta, int subimage)
{
	const unsigned char *e = p + total;
	char signature[3] = { 0 };
	fz_pixmap *pix = NULL;

	while (p < e && ((!onlymeta && subimage >= 0) || onlymeta))
	{
		int subonlymeta = onlymeta || (subimage > 0);

		p = FUNC6(ctx, p, e, signature);
		p = FUNC7(ctx, p, e, 0);

		if (!FUNC8(signature, "P1"))
		{
			pnm->cs = FUNC0(ctx);
			pix = FUNC4(ctx, pnm, p, e, subonlymeta, 1, &p);
		}
		else if (!FUNC8(signature, "P2"))
		{
			pnm->cs = FUNC0(ctx);
			pix = FUNC4(ctx, pnm, p, e, subonlymeta, 0, &p);
		}
		else if (!FUNC8(signature, "P3"))
		{
			pnm->cs = FUNC1(ctx);
			pix = FUNC4(ctx, pnm, p, e, subonlymeta, 0, &p);
		}
		else if (!FUNC8(signature, "P4"))
		{
			pnm->cs = FUNC0(ctx);
			pix = FUNC5(ctx, pnm, p, e, subonlymeta, 1, &p);
		}
		else if (!FUNC8(signature, "P5"))
		{
			pnm->cs = FUNC0(ctx);
			pix = FUNC5(ctx, pnm, p, e, subonlymeta, 0, &p);
		}
		else if (!FUNC8(signature, "P6"))
		{
			pnm->cs = FUNC1(ctx);
			pix = FUNC5(ctx, pnm, p, e, subonlymeta, 0, &p);
		}
		else if (!FUNC8(signature, "P7"))
			pix = FUNC3(ctx, pnm, p, e, subonlymeta, &p);
		else
			FUNC2(ctx, FZ_ERROR_GENERIC, "unsupported portable anymap signature (0x%02x, 0x%02x)", signature[0], signature[1]);

		if (onlymeta)
			pnm->subimages++;
		if (subimage >= 0)
			subimage--;
	}

	if (p >= e && subimage >= 0)
		FUNC2(ctx, FZ_ERROR_GENERIC, "subimage count out of range");

	return pix;
}