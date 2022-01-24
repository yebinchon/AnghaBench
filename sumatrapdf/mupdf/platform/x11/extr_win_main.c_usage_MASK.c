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
 int /*<<< orphan*/  MB_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(const char *argv0)
{
	const char *msg =
		"usage: mupdf [options] file.pdf [page]\n"
		"\t-p -\tpassword\n"
		"\t-r -\tresolution\n"
		"\t-A -\tset anti-aliasing quality in bits (0=off, 8=best)\n"
		"\t-C -\tRRGGBB (tint color in hexadecimal syntax)\n"
		"\t-W -\tpage width for EPUB layout\n"
		"\t-H -\tpage height for EPUB layout\n"
		"\t-I -\tinvert colors\n"
		"\t-S -\tfont size for EPUB layout\n"
		"\t-U -\tuser style sheet for EPUB layout\n"
		"\t-X\tdisable document styles for EPUB layout\n";
	FUNC0(NULL, msg, "MuPDF: Usage", MB_OK);
	FUNC1(1);
}