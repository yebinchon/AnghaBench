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
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr,
		"usage: mutool info [options] file.pdf [pages]\n"
		"\t-p -\tpassword for decryption\n"
		"\t-F\tlist fonts\n"
		"\t-I\tlist images\n"
		"\t-M\tlist dimensions\n"
		"\t-P\tlist patterns\n"
		"\t-S\tlist shadings\n"
		"\t-X\tlist form and postscript xobjects\n"
		"\tpages\tcomma separated list of page numbers and ranges\n"
		);
	FUNC0(1);
}