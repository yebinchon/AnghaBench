#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  intent; } ;
typedef  TYPE_1__ pdf_ocg_descriptor ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC6(fz_context *ctx, pdf_ocg_descriptor *desc, const char *name)
{
	int i, len;

	if (FUNC5(name, "All") == 0)
		return 1;

	/* In the absence of a specified intent, it's 'View' */
	if (!desc->intent)
		return (FUNC5(name, "View") == 0);

	if (FUNC3(ctx, desc->intent))
	{
		const char *intent = FUNC4(ctx, desc->intent);
		if (FUNC5(intent, "All") == 0)
			return 1;
		return (FUNC5(intent, name) == 0);
	}
	if (!FUNC2(ctx, desc->intent))
		return 0;

	len = FUNC1(ctx, desc->intent);
	for (i=0; i < len; i++)
	{
		const char *intent = FUNC4(ctx, FUNC0(ctx, desc->intent, i));
		if (FUNC5(intent, "All") == 0)
			return 1;
		if (FUNC5(intent, name) == 0)
			return 1;
	}
	return 0;
}