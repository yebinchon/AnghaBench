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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(const char *argv0)
{
	FUNC1(stderr, "usage: %s [options] file.pdf [page]\n", argv0);
	FUNC1(stderr, "\t-p -\tpassword\n");
	FUNC1(stderr, "\t-r -\tresolution\n");
	FUNC1(stderr, "\t-A -\tset anti-aliasing quality in bits (0=off, 8=best)\n");
	FUNC1(stderr, "\t-C -\tRRGGBB (tint color in hexadecimal syntax)\n");
	FUNC1(stderr, "\t-W -\tpage width for EPUB layout\n");
	FUNC1(stderr, "\t-H -\tpage height for EPUB layout\n");
	FUNC1(stderr, "\t-I -\tinvert colors\n");
	FUNC1(stderr, "\t-S -\tfont size for EPUB layout\n");
	FUNC1(stderr, "\t-U -\tuser style sheet for EPUB layout\n");
	FUNC1(stderr, "\t-X\tdisable document styles for EPUB layout\n");
	FUNC0(1);
}