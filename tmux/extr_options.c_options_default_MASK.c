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
union options_value {int /*<<< orphan*/  number; int /*<<< orphan*/  style; int /*<<< orphan*/  string; } ;
typedef  size_t u_int ;
struct options_table_entry {int flags; int type; int /*<<< orphan*/  default_num; int /*<<< orphan*/  default_str; int /*<<< orphan*/ ** default_arr; } ;
struct options_entry {union options_value value; } ;
struct options {int dummy; } ;

/* Variables and functions */
 int OPTIONS_TABLE_IS_ARRAY ; 
#define  OPTIONS_TABLE_STRING 129 
#define  OPTIONS_TABLE_STYLE 128 
 int /*<<< orphan*/  grid_default_cell ; 
 int /*<<< orphan*/  FUNC0 (struct options_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct options_entry*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct options_entry* FUNC2 (struct options*,struct options_table_entry const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

struct options_entry *
FUNC6(struct options *oo, const struct options_table_entry *oe)
{
	struct options_entry	*o;
	union options_value	*ov;
	u_int			 i;

	o = FUNC2(oo, oe);
	ov = &o->value;

	if (oe->flags & OPTIONS_TABLE_IS_ARRAY) {
		if (oe->default_arr == NULL) {
			FUNC0(o, oe->default_str, NULL);
			return (o);
		}
		for (i = 0; oe->default_arr[i] != NULL; i++)
			FUNC1(o, i, oe->default_arr[i], 0, NULL);
		return (o);
	}

	switch (oe->type) {
	case OPTIONS_TABLE_STRING:
		ov->string = FUNC5(oe->default_str);
		break;
	case OPTIONS_TABLE_STYLE:
		FUNC4(&ov->style, &grid_default_cell);
		FUNC3(&ov->style, &grid_default_cell, oe->default_str);
		break;
	default:
		ov->number = oe->default_num;
		break;
	}
	return (o);
}