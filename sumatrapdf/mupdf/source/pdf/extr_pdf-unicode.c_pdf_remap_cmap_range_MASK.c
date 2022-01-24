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
typedef  int /*<<< orphan*/  pdf_cmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,int) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, pdf_cmap *ucs_from_gid,
	unsigned int cpt, unsigned int gid, unsigned int n, pdf_cmap *ucs_from_cpt)
{
	unsigned int k;
	int ucsbuf[8];
	int ucslen;

	for (k = 0; k <= n; ++k)
	{
		ucslen = FUNC0(ucs_from_cpt, cpt + k, ucsbuf);
		if (ucslen == 1)
			FUNC2(ctx, ucs_from_gid, gid + k, gid + k, ucsbuf[0]);
		else if (ucslen > 1)
			FUNC1(ctx, ucs_from_gid, gid + k, ucsbuf, ucslen);
	}
}