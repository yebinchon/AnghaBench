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
typedef  void* u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct layout_cell {int type; int /*<<< orphan*/  cells; void* yoff; void* xoff; void* sy; void* sx; } ;

/* Variables and functions */
#define  LAYOUT_LEFTRIGHT 129 
#define  LAYOUT_TOPBOTTOM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct layout_cell*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct layout_cell* FUNC2 (struct layout_cell*) ; 
 int /*<<< orphan*/  FUNC3 (struct layout_cell*) ; 
 int FUNC4 (char const*,char*,void**,void**,void**,void**) ; 

__attribute__((used)) static struct layout_cell *
FUNC5(struct layout_cell *lcparent, const char **layout)
{
	struct layout_cell     *lc, *lcchild;
	u_int			sx, sy, xoff, yoff;
	const char	       *saved;

	if (!FUNC1((u_char) **layout))
		return (NULL);
	if (FUNC4(*layout, "%ux%u,%u,%u", &sx, &sy, &xoff, &yoff) != 4)
		return (NULL);

	while (FUNC1((u_char) **layout))
		(*layout)++;
	if (**layout != 'x')
		return (NULL);
	(*layout)++;
	while (FUNC1((u_char) **layout))
		(*layout)++;
	if (**layout != ',')
		return (NULL);
	(*layout)++;
	while (FUNC1((u_char) **layout))
		(*layout)++;
	if (**layout != ',')
		return (NULL);
	(*layout)++;
	while (FUNC1((u_char) **layout))
		(*layout)++;
	if (**layout == ',') {
		saved = *layout;
		(*layout)++;
		while (FUNC1((u_char) **layout))
			(*layout)++;
		if (**layout == 'x')
			*layout = saved;
	}

	lc = FUNC2(lcparent);
	lc->sx = sx;
	lc->sy = sy;
	lc->xoff = xoff;
	lc->yoff = yoff;

	switch (**layout) {
	case ',':
	case '}':
	case ']':
	case '\0':
		return (lc);
	case '{':
		lc->type = LAYOUT_LEFTRIGHT;
		break;
	case '[':
		lc->type = LAYOUT_TOPBOTTOM;
		break;
	default:
		goto fail;
	}

	do {
		(*layout)++;
		lcchild = FUNC5(lc, layout);
		if (lcchild == NULL)
			goto fail;
		FUNC0(&lc->cells, lcchild, entry);
	} while (**layout == ',');

	switch (lc->type) {
	case LAYOUT_LEFTRIGHT:
		if (**layout != '}')
			goto fail;
		break;
	case LAYOUT_TOPBOTTOM:
		if (**layout != ']')
			goto fail;
		break;
	default:
		goto fail;
	}
	(*layout)++;

	return (lc);

fail:
	FUNC3(lc);
	return (NULL);
}