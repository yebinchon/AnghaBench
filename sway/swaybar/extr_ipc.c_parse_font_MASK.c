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
 char* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 

char *FUNC2(const char *font) {
	char *new_font = NULL;
	if (FUNC1("pango:", font, 6) == 0) {
		font += 6;
	}
	new_font = FUNC0(font);
	return new_font;
}