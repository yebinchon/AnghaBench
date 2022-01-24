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
typedef  int /*<<< orphan*/  pdfapp_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void FUNC6(pdfapp_t *app, char *source, char *target)
{
	FILE *in, *out;
	char buf[32 << 10];
	size_t n;

	in = FUNC2(source, "rb");
	if (!in)
	{
		FUNC5(app, "cannot open source file for copying");
		return;
	}
	out = FUNC2(target, "wb");
	if (!out)
	{
		FUNC5(app, "cannot open target file for copying");
		FUNC0(in);
		return;
	}

	for (;;)
	{
		n = FUNC3(buf, 1, sizeof buf, in);
		FUNC4(buf, 1, n, out);
		if (n < sizeof buf)
		{
			if (FUNC1(in))
				FUNC5(app, "cannot read data from source file");
			break;
		}
	}

	FUNC0(out);
	FUNC0(in);
}