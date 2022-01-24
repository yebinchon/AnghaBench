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
struct window_mode {int /*<<< orphan*/ * default_format; int /*<<< orphan*/  name; } ;
struct format_tree {int tag; int flags; int /*<<< orphan*/  time; struct cmdq_item* item; struct client* client; int /*<<< orphan*/  tree; } ;
struct cmdq_item {int dummy; } ;
struct client {int /*<<< orphan*/  references; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * VERSION ; 
 struct window_mode** all_window_modes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct format_tree*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct format_tree*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct format_tree*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  format_cb_host ; 
 int /*<<< orphan*/  format_cb_host_short ; 
 int /*<<< orphan*/  format_cb_pid ; 
 int /*<<< orphan*/  FUNC6 (struct format_tree*,struct cmdq_item*) ; 
 int /*<<< orphan*/  format_job_event ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * socket_path ; 
 int /*<<< orphan*/  start_time ; 
 size_t FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct format_tree* FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int /*<<< orphan*/ ) ; 

struct format_tree *
FUNC12(struct client *c, struct cmdq_item *item, int tag, int flags)
{
	struct format_tree		 *ft;
	const struct window_mode	**wm;
	char				  tmp[64];

	if (!FUNC1(&format_job_event)) {
		FUNC2(&format_job_event, format_job_timer, NULL);
		FUNC7(-1, 0, NULL);
	}

	ft = FUNC10(1, sizeof *ft);
	FUNC0(&ft->tree);

	if (c != NULL) {
		ft->client = c;
		ft->client->references++;
	}
	ft->item = item;

	ft->tag = tag;
	ft->flags = flags;
	ft->time = FUNC9(NULL);

	FUNC3(ft, "version", "%s", VERSION);
	FUNC4(ft, "host", format_cb_host);
	FUNC4(ft, "host_short", format_cb_host_short);
	FUNC4(ft, "pid", format_cb_pid);
	FUNC3(ft, "socket_path", "%s", socket_path);
	FUNC5(ft, "start_time", &start_time);

	for (wm = all_window_modes; *wm != NULL; wm++) {
		if ((*wm)->default_format != NULL) {
			FUNC11(tmp, sizeof tmp, "%s_format", (*wm)->name);
			tmp[FUNC8(tmp, "-")] = '_';
			FUNC3(ft, tmp, "%s", (*wm)->default_format);
		}
	}

	if (item != NULL)
		FUNC6(ft, item);

	return (ft);
}