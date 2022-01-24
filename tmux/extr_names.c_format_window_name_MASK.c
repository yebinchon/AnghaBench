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
struct window {int id; int /*<<< orphan*/  options; int /*<<< orphan*/  active; } ;
struct format_tree {int dummy; } ;

/* Variables and functions */
 int FORMAT_WINDOW ; 
 struct format_tree* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct format_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct format_tree*,struct window*) ; 
 char* FUNC3 (struct format_tree*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct format_tree*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *
FUNC6(struct window *w)
{
	struct format_tree	*ft;
	const char		*fmt;
	char			*name;

	ft = FUNC0(NULL, NULL, FORMAT_WINDOW|w->id, 0);
	FUNC2(ft, w);
	FUNC1(ft, w->active);

	fmt = FUNC5(w->options, "automatic-rename-format");
	name = FUNC3(ft, fmt);

	FUNC4(ft);
	return (name);
}