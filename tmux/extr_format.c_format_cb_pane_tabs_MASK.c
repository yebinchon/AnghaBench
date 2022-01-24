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
typedef  scalar_t__ u_int ;
struct TYPE_4__ {int /*<<< orphan*/  tabs; TYPE_1__* grid; } ;
struct window_pane {TYPE_2__ base; } ;
struct format_tree {struct window_pane* wp; } ;
struct format_entry {int /*<<< orphan*/  value; } ;
struct evbuffer {int dummy; } ;
struct TYPE_3__ {scalar_t__ sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*) ; 
 struct evbuffer* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct format_tree *ft, struct format_entry *fe)
{
	struct window_pane	*wp = ft->wp;
	struct evbuffer		*buffer;
	u_int			 i;
	int			 size;

	if (wp == NULL)
		return;

	buffer = FUNC6();
	if (buffer == NULL)
		FUNC7("out of memory");
	for (i = 0; i < wp->base.grid->sx; i++) {
		if (!FUNC2(wp->base.tabs, i))
			continue;

		if (FUNC1(buffer) > 0)
			FUNC3(buffer, ",", 1);
		FUNC4(buffer, "%u", i);
	}
	if ((size = FUNC1(buffer)) != 0)
		FUNC8(&fe->value, "%.*s", size, FUNC0(buffer));
	FUNC5(buffer);
}