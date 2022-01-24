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
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const) ; 

void
FUNC1(fz_context *ctx, fz_output *out, const unsigned char *data, int size, int newline)
{
	static const char set[64] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
	int i;
	for (i = 0; i + 3 <= size; i += 3)
	{
		int c = data[i];
		int d = data[i+1];
		int e = data[i+2];
		if (newline && (i & 15) == 0)
			FUNC0(ctx, out, '\n');
		FUNC0(ctx, out, set[c>>2]);
		FUNC0(ctx, out, set[((c&3)<<4)|(d>>4)]);
		FUNC0(ctx, out, set[((d&15)<<2)|(e>>6)]);
		FUNC0(ctx, out, set[e&63]);
	}
	if (size - i == 2)
	{
		int c = data[i];
		int d = data[i+1];
		FUNC0(ctx, out, set[c>>2]);
		FUNC0(ctx, out, set[((c&3)<<4)|(d>>4)]);
		FUNC0(ctx, out, set[((d&15)<<2)]);
		FUNC0(ctx, out, '=');
	}
	else if (size - i == 1)
	{
		int c = data[i];
		FUNC0(ctx, out, set[c>>2]);
		FUNC0(ctx, out, set[((c&3)<<4)]);
		FUNC0(ctx, out, '=');
		FUNC0(ctx, out, '=');
	}
}