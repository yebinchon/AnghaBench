#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int compress; int strip_height; } ;
typedef  TYPE_1__ fz_pclm_options ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,char*,char const**) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

fz_pclm_options *
FUNC5(fz_context *ctx, fz_pclm_options *opts, const char *args)
{
	const char *val;

	FUNC4(opts, 0, sizeof *opts);

	if (FUNC1(ctx, args, "compression", &val))
	{
		if (FUNC2(val, "none"))
			opts->compress = 0;
		else if (FUNC2(val, "flate"))
			opts->compress = 1;
		else
			FUNC3(ctx, FZ_ERROR_GENERIC, "Unsupported PCLm compression %s (none, or flate only)", val);
	}
	if (FUNC1(ctx, args, "strip-height", &val))
	{
		int i = FUNC0(val);
		if (i <= 0)
			FUNC3(ctx, FZ_ERROR_GENERIC, "Unsupported PCLm strip height %d (suggest 16)", i);
		opts->strip_height = i;
	}

	return opts;
}