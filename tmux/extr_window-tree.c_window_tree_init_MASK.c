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
struct window_tree_modedata {int references; int squash_groups; int /*<<< orphan*/  type; int /*<<< orphan*/  data; void* command; void* format; int /*<<< orphan*/  fs; struct window_pane* wp; } ;
struct window_pane {int dummy; } ;
struct window_mode_entry {struct window_tree_modedata* data; struct window_pane* wp; } ;
struct screen {int dummy; } ;
struct cmd_find_state {int dummy; } ;
struct args {scalar_t__ argc; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  WINDOW_TREE_DEFAULT_COMMAND ; 
 int /*<<< orphan*/  WINDOW_TREE_DEFAULT_FORMAT ; 
 int /*<<< orphan*/  WINDOW_TREE_NONE ; 
 int /*<<< orphan*/  WINDOW_TREE_PANE ; 
 int /*<<< orphan*/  WINDOW_TREE_SESSION ; 
 int /*<<< orphan*/  WINDOW_TREE_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (struct args*,float) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cmd_find_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct window_pane*,struct args*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct window_tree_modedata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct screen**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct args*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  window_tree_build ; 
 int /*<<< orphan*/  window_tree_draw ; 
 int /*<<< orphan*/  window_tree_menu ; 
 int /*<<< orphan*/  window_tree_menu_items ; 
 int /*<<< orphan*/  window_tree_search ; 
 int /*<<< orphan*/  window_tree_sort_list ; 
 struct window_tree_modedata* FUNC8 (int,int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct screen *
FUNC10(struct window_mode_entry *wme, struct cmd_find_state *fs,
    struct args *args)
{
	struct window_pane		*wp = wme->wp;
	struct window_tree_modedata	*data;
	struct screen			*s;

	wme->data = data = FUNC8(1, sizeof *data);
	data->wp = wp;
	data->references = 1;

	if (FUNC1(args, 's'))
		data->type = WINDOW_TREE_SESSION;
	else if (FUNC1(args, 'w'))
		data->type = WINDOW_TREE_WINDOW;
	else
		data->type = WINDOW_TREE_PANE;
	FUNC2(&data->fs, fs, sizeof data->fs);

	if (args == NULL || !FUNC1(args, 'F'))
		data->format = FUNC9(WINDOW_TREE_DEFAULT_FORMAT);
	else
		data->format = FUNC9(FUNC0(args, 'F'));
	if (args == NULL || args->argc == 0)
		data->command = FUNC9(WINDOW_TREE_DEFAULT_COMMAND);
	else
		data->command = FUNC9(args->argv[0]);
	data->squash_groups = !FUNC1(args, 'G');

	data->data = FUNC5(wp, args, window_tree_build,
	    window_tree_draw, window_tree_search, window_tree_menu, data,
	    window_tree_menu_items, window_tree_sort_list,
	    FUNC7(window_tree_sort_list), &s);
	FUNC6(data->data, args);

	FUNC3(data->data);
	FUNC4(data->data);

	data->type = WINDOW_TREE_NONE;

	return (s);
}