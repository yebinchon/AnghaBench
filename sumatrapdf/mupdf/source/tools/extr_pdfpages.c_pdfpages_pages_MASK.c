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
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC8(fz_context *ctx, fz_output *out, char *filename, char *password, char *argv[], int argc)
{
	enum { NO_FILE_OPENED, NO_INFO_GATHERED, INFO_SHOWN } state;
	int argidx = 0;
	pdf_document *doc = NULL;
	int ret = 0;

	state = NO_FILE_OPENED;
	while (argidx < argc)
	{
		if (state == NO_FILE_OPENED || !FUNC0(ctx, argv[argidx]))
		{
			if (state == NO_INFO_GATHERED)
			{
				FUNC7(ctx, doc, out, "1-N");
			}

			FUNC4(ctx, doc);

			filename = argv[argidx];
			FUNC2(ctx, out, "%s:\n", filename);
			doc = FUNC6(ctx, filename);
			if (FUNC5(ctx, doc))
				if (!FUNC3(ctx, doc, password))
					FUNC1(ctx, FZ_ERROR_GENERIC, "cannot authenticate password: %s", filename);

			state = NO_INFO_GATHERED;
		}
		else
		{
			ret |= FUNC7(ctx, doc, out, argv[argidx]);
			state = INFO_SHOWN;
		}

		argidx++;
	}

	if (state == NO_INFO_GATHERED)
		FUNC7(ctx, doc, out, "1-N");

	FUNC4(ctx, doc);

	return ret;
}