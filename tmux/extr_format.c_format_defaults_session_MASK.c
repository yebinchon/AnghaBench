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
struct session_group {int name; } ;
struct session {int name; int id; int attached; int /*<<< orphan*/  activity_time; int /*<<< orphan*/  last_attached_time; int /*<<< orphan*/  creation_time; int /*<<< orphan*/  windows; } ;
struct format_tree {struct session* s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct format_tree*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct format_tree*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct format_tree*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  format_cb_session_alerts ; 
 int /*<<< orphan*/  format_cb_session_group_list ; 
 int /*<<< orphan*/  format_cb_session_stack ; 
 struct session_group* FUNC3 (struct session*) ; 
 int FUNC4 (struct session_group*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct format_tree *ft, struct session *s)
{
	struct session_group	*sg;

	ft->s = s;

	FUNC0(ft, "session_name", "%s", s->name);
	FUNC0(ft, "session_windows", "%u", FUNC5(&s->windows));
	FUNC0(ft, "session_id", "$%u", s->id);

	sg = FUNC3(s);
	FUNC0(ft, "session_grouped", "%d", sg != NULL);
	if (sg != NULL) {
		FUNC0(ft, "session_group", "%s", sg->name);
		FUNC0(ft, "session_group_size", "%u",
		    FUNC4 (sg));
		FUNC1(ft, "session_group_list",
		    format_cb_session_group_list);
	}

	FUNC2(ft, "session_created", &s->creation_time);
	FUNC2(ft, "session_last_attached", &s->last_attached_time);
	FUNC2(ft, "session_activity", &s->activity_time);

	FUNC0(ft, "session_attached", "%u", s->attached);
	FUNC0(ft, "session_many_attached", "%d", s->attached > 1);

	FUNC1(ft, "session_alerts", format_cb_session_alerts);
	FUNC1(ft, "session_stack", format_cb_session_stack);
}