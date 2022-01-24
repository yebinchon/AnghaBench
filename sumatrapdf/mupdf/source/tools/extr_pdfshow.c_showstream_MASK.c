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
typedef  int /*<<< orphan*/  fz_stream ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  doc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  out ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ showbinary ; 
 scalar_t__ showcolumn ; 
 scalar_t__ showdecode ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t) ; 

__attribute__((used)) static void FUNC6(int num)
{
	fz_stream *stm;
	unsigned char buf[2048];
	size_t n;

	showcolumn = 0;

	if (showdecode)
		stm = FUNC4(ctx, doc, num);
	else
		stm = FUNC3(ctx, doc, num);

	while (1)
	{
		n = FUNC1(ctx, stm, buf, sizeof buf);
		if (n == 0)
			break;
		if (showbinary)
			FUNC2(ctx, out, buf, n);
		else
			FUNC5(buf, n);
	}

	FUNC0(ctx, stm);
}