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
struct info {scalar_t__ tupletype; scalar_t__ maxval; scalar_t__ depth; scalar_t__ height; scalar_t__ width; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
#define  TOKEN_DEPTH 133 
#define  TOKEN_ENDHDR 132 
#define  TOKEN_HEIGHT 131 
#define  TOKEN_MAXVAL 130 
#define  TOKEN_TUPLTYPE 129 
 int TOKEN_UNKNOWN ; 
#define  TOKEN_WIDTH 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *,unsigned char const*,unsigned char const*,scalar_t__*) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,unsigned char const*,unsigned char const*,int*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,unsigned char const*,unsigned char const*,scalar_t__*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,unsigned char const*,unsigned char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const unsigned char *
FUNC5(fz_context *ctx, struct info *pnm, const unsigned char *p, const unsigned char *e)
{
	int token = TOKEN_UNKNOWN;

	pnm->width = 0;
	pnm->height = 0;
	pnm->depth = 0;
	pnm->maxval = 0;
	pnm->tupletype = 0;

	while (p < e && token != TOKEN_ENDHDR)
	{
		p = FUNC2(ctx, p, e, &token);
		p = FUNC4(ctx, p, e, 0);
		switch (token)
		{
		case TOKEN_WIDTH: p = FUNC1(ctx, p, e, &pnm->width); break;
		case TOKEN_HEIGHT: p = FUNC1(ctx, p, e, &pnm->height); break;
		case TOKEN_DEPTH: p = FUNC1(ctx, p, e, &pnm->depth); break;
		case TOKEN_MAXVAL: p = FUNC1(ctx, p, e, &pnm->maxval); break;
		case TOKEN_TUPLTYPE: p = FUNC3(ctx, p, e, &pnm->tupletype); break;
		case TOKEN_ENDHDR: break;
		default: FUNC0(ctx, FZ_ERROR_GENERIC, "unknown header token in pnm image");
		}

		if (token != TOKEN_ENDHDR)
			p = FUNC4(ctx, p, e, 0);
	}

	return p;
}