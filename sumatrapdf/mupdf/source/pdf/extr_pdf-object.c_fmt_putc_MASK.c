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
struct fmt {int last; int len; int cap; int* buf; int* ptr; scalar_t__ col; scalar_t__ sep; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int* FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 

__attribute__((used)) static inline void FUNC4(fz_context *ctx, struct fmt *fmt, int c)
{
	if (fmt->sep && !FUNC2(fmt->last) && !FUNC2(c)) {
		fmt->sep = 0;
		FUNC4(ctx, fmt, ' ');
	}
	fmt->sep = 0;

	if (fmt->len >= fmt->cap)
	{
		fmt->cap *= 2;
		if (fmt->buf == fmt->ptr)
		{
			fmt->ptr = FUNC0(ctx, fmt->cap);
			FUNC3(fmt->ptr, fmt->buf, fmt->len);
		}
		else
		{
			fmt->ptr = FUNC1(ctx, fmt->ptr, fmt->cap);
		}
	}

	fmt->ptr[fmt->len] = c;

	if (c == '\n')
		fmt->col = 0;
	else
		fmt->col ++;

	fmt->len ++;

	fmt->last = c;
}