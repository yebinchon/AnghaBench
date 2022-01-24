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
struct refTables {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int LZ4_64KLIMIT ; 
 int FUNC1 (void*,char const*,char*,int,int) ; 
 int FUNC2 (void*,char const*,char*,int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * lz4_cache ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(const char *source, char *dest, int isize, int osize)
{
	void *ctx;
	int result;

	FUNC0(lz4_cache != NULL);
	ctx = FUNC3(lz4_cache, KM_SLEEP);

	/*
	 * out of kernel memory, gently fall through - this will disable
	 * compression in zio_compress_data
	 */
	if (ctx == NULL)
		return (0);

	FUNC5(ctx, 0, sizeof (struct refTables));

	if (isize < LZ4_64KLIMIT)
		result = FUNC1(ctx, source, dest, isize, osize);
	else
		result = FUNC2(ctx, source, dest, isize, osize);

	FUNC4(lz4_cache, ctx);
	return (result);
}