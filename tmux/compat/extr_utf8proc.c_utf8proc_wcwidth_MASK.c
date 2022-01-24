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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int UTF8PROC_CATEGORY_CO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(wchar_t wc)
{
	int	cat;

	cat = FUNC0(wc);
	if (cat == UTF8PROC_CATEGORY_CO) {
		/*
		 * The private use category is where powerline and similar
		 * codepoints are stored, they have "ambiguous" width - use 1.
		 */
		return (1);
	}
	return (FUNC1(wc));
}