#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t col; } ;
struct view {size_t col; int /*<<< orphan*/  win; TYPE_1__ pos; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;

/* Variables and functions */
 scalar_t__ ICONV_NONE ; 
 int LINE_DELIMITER ; 
 scalar_t__ FUNC0 (struct view*) ; 
 char* FUNC1 (scalar_t__,char const*,int) ; 
 scalar_t__ opt_iconv_out ; 
 int /*<<< orphan*/  opt_tab_size ; 
 char* opt_truncation_delimiter ; 
 int /*<<< orphan*/  FUNC2 (struct view*,int) ; 
 int FUNC3 (char const**,int,size_t,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool
FUNC6(struct view *view, enum line_type type, const char *string, int length,
	   int max_width, bool use_tilde)
{
	int len = 0;
	int col = 0;
	int trimmed = false;
	size_t skip = view->pos.col > view->col ? view->pos.col - view->col : 0;

	if (max_width <= 0)
		return FUNC0(view) <= 0;

	len = FUNC3(&string, length, skip, &col, max_width, &trimmed, use_tilde, opt_tab_size);

	if (opt_iconv_out != ICONV_NONE) {
		string = FUNC1(opt_iconv_out, string, len);
		if (!string)
			return FUNC0(view) <= 0;
	}

	FUNC2(view, type);
	if (len > 0)
		FUNC4(view->win, string, len);

	if (trimmed && use_tilde) {
		FUNC2(view, LINE_DELIMITER);
		FUNC5(view->win, opt_truncation_delimiter ? opt_truncation_delimiter : "~");
		col++;
	}

	view->col += col;
	return FUNC0(view) <= 0;
}