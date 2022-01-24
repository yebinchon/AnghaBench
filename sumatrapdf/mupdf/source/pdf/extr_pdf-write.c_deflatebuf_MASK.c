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
typedef  scalar_t__ uLongf ;
typedef  scalar_t__ uLong ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int Z_OK ; 
 int FUNC0 (unsigned char*,scalar_t__*,unsigned char const*,scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static fz_buffer *FUNC7(fz_context *ctx, const unsigned char *p, size_t n)
{
	fz_buffer *buf;
	uLongf csize;
	int t;
	uLong longN = (uLong)n;
	unsigned char *data;
	size_t cap;

	if (n != (size_t)longN)
		FUNC6(ctx, FZ_ERROR_GENERIC, "Buffer too large to deflate");

	cap = FUNC1(longN);
	data = FUNC3(ctx, cap);
	buf = FUNC4(ctx, data, cap);
	csize = (uLongf)cap;
	t = FUNC0(data, &csize, p, longN);
	if (t != Z_OK)
	{
		FUNC2(ctx, buf);
		FUNC6(ctx, FZ_ERROR_GENERIC, "cannot deflate buffer");
	}
	FUNC5(ctx, buf, csize);
	return buf;
}