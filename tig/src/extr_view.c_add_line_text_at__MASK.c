#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct view {TYPE_2__* ops; } ;
struct line {struct box* data; } ;
struct box {size_t cells; TYPE_1__* cell; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_4__ {scalar_t__ column_bits; } ;
struct TYPE_3__ {size_t length; int type; } ;

/* Variables and functions */
 struct line* FUNC0 (struct view*,unsigned long,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct box*,size_t,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct view*,struct line*) ; 

struct line *
FUNC4(struct view *view, unsigned long pos, const char *text, size_t textlen, enum line_type type, size_t cells, bool custom)
{
	struct box *box;
	struct line *line = FUNC0(view, pos, NULL, type, FUNC1(NULL, cells, textlen), custom);

	if (!line)
		return NULL;

	box = line->data;
	box->cell[box->cells].length = textlen;
	box->cell[box->cells++].type = type;
	FUNC2(box, cells, text, textlen);

	if (view->ops->column_bits)
		FUNC3(view, line);
	return line;
}