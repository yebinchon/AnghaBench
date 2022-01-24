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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fz_pdf_write_options_usage ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC1(stderr,
		"usage: mutool merge [-o output.pdf] [-O options] input.pdf [pages] [input2.pdf] [pages2] ...\n"
		"\t-o -\tname of PDF file to create\n"
		"\t-O -\tcomma separated list of output options\n"
		"\tinput.pdf\tname of input file from which to copy pages\n"
		"\tpages\tcomma separated list of page numbers and ranges\n\n"
		);
	FUNC2(fz_pdf_write_options_usage, stderr);
	FUNC0(1);
}