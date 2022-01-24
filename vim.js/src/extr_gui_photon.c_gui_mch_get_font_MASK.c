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
typedef  int int_u ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  GuiFont ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FAIL ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  e_font ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

GuiFont
FUNC4(char_u *vim_font_name, int report_error)
{
    char_u  *font_name;
    char_u  *font_tag;
    int_u   font_size = 12;
    int_u   font_flags = 0;

    if (FUNC2(vim_font_name, &font_name, &font_flags,
		&font_size) != FALSE)
    {
	font_tag = FUNC1(font_name, font_flags, font_size, -1);
	FUNC3(font_name);

	if (font_tag != NULL)
	    return (GuiFont)font_tag;
    }

    if (report_error)
	FUNC0(e_font, vim_font_name);

    return FAIL;
}