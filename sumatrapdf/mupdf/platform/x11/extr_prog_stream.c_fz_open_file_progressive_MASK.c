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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void (*) (void*,int),void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 

fz_stream *
FUNC4(fz_context *ctx, const char *name, int kbps, void (*on_data)(void*,int), void *opaque)
{
	FILE *f;
#ifdef _WIN32
	f = fz_fopen_utf8(name, "rb");
#else
	f = FUNC0(name, "rb");
#endif
	if (f == NULL)
		FUNC3(ctx, FZ_ERROR_GENERIC, "cannot open %s", name);
	return FUNC2(ctx, f, kbps, on_data, opaque);
}