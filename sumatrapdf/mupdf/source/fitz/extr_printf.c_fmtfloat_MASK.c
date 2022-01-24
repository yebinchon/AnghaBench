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
struct fmtbuf {int dummy; } ;

/* Variables and functions */
 float FLT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct fmtbuf*,char) ; 
 int FUNC1 (float,char*,int*) ; 
 scalar_t__ FUNC2 (float) ; 
 scalar_t__ FUNC3 (float) ; 
 scalar_t__ FUNC4 (float) ; 

__attribute__((used)) static void FUNC5(struct fmtbuf *out, float f)
{
	char digits[40], *s = digits;
	int exp, ndigits, point;

	if (FUNC3(f)) f = 0;
	if (FUNC2(f)) f = f < 0 ? -FLT_MAX : FLT_MAX;

	if (FUNC4(f))
		FUNC0(out, '-');

	if (f == 0)
	{
		FUNC0(out, '0');
		return;
	}

	ndigits = FUNC1(f, digits, &exp);
	point = exp + ndigits;

	if (point <= 0)
	{
		FUNC0(out, '.');
		while (point++ < 0)
			FUNC0(out, '0');
		while (ndigits-- > 0)
			FUNC0(out, *s++);
	}

	else
	{
		while (ndigits-- > 0)
		{
			FUNC0(out, *s++);
			if (--point == 0 && ndigits > 0)
				FUNC0(out, '.');
		}
		while (point-- > 0)
			FUNC0(out, '0');
	}
}