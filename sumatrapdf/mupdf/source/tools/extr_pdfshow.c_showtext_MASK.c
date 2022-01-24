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

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  out ; 

__attribute__((used)) static void FUNC1(char *buf, int indent)
{
	int bol = 1;
	int c = *buf;
	while (*buf)
	{
		c = *buf++;
		if (c == '\r')
		{
			if (*buf == '\n')
				++buf;
			c = '\n';
		}
		if (indent && bol)
			FUNC0(ctx, out, '\t');
		FUNC0(ctx, out, c);
		bol = (c == '\n');
	}
	if (!bol)
		FUNC0(ctx, out, '\n');
}