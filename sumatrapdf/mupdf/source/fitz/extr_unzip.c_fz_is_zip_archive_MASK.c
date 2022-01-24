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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char const*,size_t) ; 
 size_t FUNC3 (unsigned char const*) ; 

int
FUNC4(fz_context *ctx, fz_stream *file)
{
	const unsigned char signature[4] = { 'P', 'K', 0x03, 0x04 };
	unsigned char data[4];
	size_t n;

	FUNC1(ctx, file, 0, 0);
	n = FUNC0(ctx, file, data, FUNC3(data));
	if (n != FUNC3(signature))
		return 0;
	if (FUNC2(data, signature, FUNC3(signature)))
		return 0;

	return 1;
}