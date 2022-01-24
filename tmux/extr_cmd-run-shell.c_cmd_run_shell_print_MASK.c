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
struct window_pane {int /*<<< orphan*/  modes; } ;
struct window_mode_entry {int /*<<< orphan*/ * mode; } ;
struct job {int dummy; } ;
struct cmd_run_shell_data {int wp_id; int /*<<< orphan*/ * item; } ;
struct cmd_find_state {struct window_pane* wp; } ;

/* Variables and functions */
 struct window_mode_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct cmd_find_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 struct cmd_run_shell_data* FUNC3 (struct job*) ; 
 int /*<<< orphan*/  FUNC4 (struct window_pane*,char*,char const*) ; 
 struct window_pane* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct window_pane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  window_view_mode ; 

__attribute__((used)) static void
FUNC7(struct job *job, const char *msg)
{
	struct cmd_run_shell_data	*cdata = FUNC3(job);
	struct window_pane		*wp = NULL;
	struct cmd_find_state		 fs;
	struct window_mode_entry	*wme;

	if (cdata->wp_id != -1)
		wp = FUNC5(cdata->wp_id);
	if (wp == NULL) {
		if (cdata->item != NULL) {
			FUNC2(cdata->item, "%s", msg);
			return;
		}
		if (FUNC1(&fs, 0) != 0)
			return;
		wp = fs.wp;
		if (wp == NULL)
			return;
	}

	wme = FUNC0(&wp->modes);
	if (wme == NULL || wme->mode != &window_view_mode)
		FUNC6(wp, &window_view_mode, NULL, NULL);
	FUNC4(wp, "%s", msg);
}