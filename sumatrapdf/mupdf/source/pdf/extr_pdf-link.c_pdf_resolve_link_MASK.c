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
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC2 (char const*,char) ; 
 char* FUNC3 (char const*,char) ; 

int
FUNC4(fz_context *ctx, pdf_document *doc, const char *uri, float *xp, float *yp)
{
	if (uri && uri[0] == '#')
	{
		int page = FUNC0(uri + 1) - 1;
		if (xp || yp)
		{
			const char *x = FUNC2(uri, ',');
			const char *y = FUNC3(uri, ',');
			if (x && y)
			{
				if (xp) *xp = FUNC0(x + 1);
				if (yp) *yp = FUNC0(y + 1);
			}
		}
		return page;
	}
	FUNC1(ctx, "unknown link uri '%s'", uri);
	return -1;
}