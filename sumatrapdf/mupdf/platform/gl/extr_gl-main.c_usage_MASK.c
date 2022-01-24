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
 char* FZ_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(const char *argv0)
{
	FUNC1(stderr, "mupdf-gl version %s\n", FZ_VERSION);
	FUNC1(stderr, "usage: %s [options] document [page]\n", argv0);
	FUNC1(stderr, "\t-p -\tpassword\n");
	FUNC1(stderr, "\t-r -\tresolution\n");
	FUNC1(stderr, "\t-I\tinvert colors\n");
	FUNC1(stderr, "\t-W -\tpage width for EPUB layout\n");
	FUNC1(stderr, "\t-H -\tpage height for EPUB layout\n");
	FUNC1(stderr, "\t-S -\tfont size for EPUB layout\n");
	FUNC1(stderr, "\t-U -\tuser style sheet for EPUB layout\n");
	FUNC1(stderr, "\t-X\tdisable document styles for EPUB layout\n");
	FUNC1(stderr, "\t-J\tdisable javascript in PDF forms\n");
	FUNC1(stderr, "\t-A -\tset anti-aliasing level (0-8,9,10)\n");
	FUNC1(stderr, "\t-B -\tset black tint color (default: 303030)\n");
	FUNC1(stderr, "\t-C -\tset white tint color (default: FFFFF0)\n");
	FUNC0(1);
}