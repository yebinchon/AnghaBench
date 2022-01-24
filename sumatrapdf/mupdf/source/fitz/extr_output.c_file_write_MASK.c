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
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (void const*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, void *opaque, const void *buffer, size_t count)
{
	FILE *file = opaque;
	size_t n;

	if (count == 0)
		return;

	if (count == 1)
	{
		int x = FUNC3(((unsigned char*)buffer)[0], file);
		if (x == EOF && FUNC0(file))
			FUNC2(ctx, FZ_ERROR_GENERIC, "cannot fwrite: %s", FUNC4(errno));
		return;
	}

	n = FUNC1(buffer, 1, count, file);
	if (n < count && FUNC0(file))
		FUNC2(ctx, FZ_ERROR_GENERIC, "cannot fwrite: %s", FUNC4(errno));
}