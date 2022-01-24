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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 

int
FUNC3(fz_context *ctx, const char *path)
{
	FILE *file;
#ifdef _WIN32
	file = fz_fopen_utf8(path, "rb");
#else
	file = FUNC1(path, "rb");
#endif
	if (file)
		FUNC0(file);
	return !!file;
}