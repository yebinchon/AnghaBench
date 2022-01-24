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
struct view {struct main_state* private; } ;
struct main_state {scalar_t__* reflogmsg; } ;
struct line {scalar_t__ lineno; } ;
struct commit {int /*<<< orphan*/  id; int /*<<< orphan*/  title; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int SIZEOF_STR ; 
 struct line* FUNC0 (struct view*,struct commit**,int,size_t,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ opt_start_on_head ; 
 int /*<<< orphan*/  FUNC3 (struct view*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*,size_t,int) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct view*,struct line*) ; 

__attribute__((used)) static struct commit *
FUNC8(struct view *view, enum line_type type, struct commit *template,
		const char *title, bool custom)
{
	struct main_state *state = view->private;
	size_t titlelen;
	struct commit *commit;
	char buf[SIZEOF_STR / 2];
	struct line *line;

	/* FIXME: More graceful handling of titles; append "..." to
	 * shortened titles, etc. */
	FUNC4(buf, sizeof(buf), title, FUNC5(title), 1);
	title = buf;
	titlelen = FUNC5(title);

	line = FUNC0(view, &commit, type, titlelen, custom);
	if (!line)
		return NULL;

	*commit = *template;
	FUNC6(commit->title, title, titlelen);
	FUNC2(template, 0, sizeof(*template));
	state->reflogmsg[0] = 0;

	FUNC7(view, line);

	if (opt_start_on_head && FUNC1(commit->id))
		FUNC3(view, line->lineno + 1);

	return commit;
}