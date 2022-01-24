#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct view {int lines; TYPE_1__* line; struct main_state* private; } ;
struct commit {int /*<<< orphan*/ * title; int /*<<< orphan*/  graph; int /*<<< orphan*/  time; int /*<<< orphan*/  author; int /*<<< orphan*/ * id; } ;
struct main_state {int in_header; char* reflogmsg; scalar_t__ with_graph; struct commit current; scalar_t__ first_parent; struct graph* graph; } ;
struct graph {int /*<<< orphan*/  (* render_parents ) (struct graph*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* add_parent ) (struct graph*,char*) ;int /*<<< orphan*/  (* done_rendering ) (struct graph*) ;} ;
struct buffer {char* data; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_2__ {int dirty; struct commit* data; } ;

/* Variables and functions */
#define  LINE_AUTHOR 131 
 int LINE_COMMIT ; 
 int /*<<< orphan*/  LINE_MAIN_ANNOTATED ; 
 int /*<<< orphan*/  LINE_MAIN_COMMIT ; 
#define  LINE_PARENT 130 
#define  LINE_PP_REFLOG 129 
#define  LINE_PP_REFLOGMSG 128 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct view*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (struct buffer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (struct view*,int /*<<< orphan*/ ,struct commit*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct view*,struct main_state*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct view*,struct commit*) ; 
 int /*<<< orphan*/  FUNC11 (struct view*,struct commit*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC13 (char*,char) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct graph*) ; 
 int /*<<< orphan*/  FUNC18 (struct graph*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct graph*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct graph*,int /*<<< orphan*/ *) ; 

bool
FUNC21(struct view *view, struct buffer *buf, bool force_stop)
{
	struct main_state *state = view->private;
	struct graph *graph = state->graph;
	enum line_type type;
	struct commit *commit = &state->current;
	char *line;

	if (!buf) {
		FUNC10(view, commit);

		if (!force_stop && FUNC2(view))
			FUNC1("No revisions match the given arguments.");
		if (view->lines > 0) {
			struct commit *last = view->line[view->lines - 1].data;

			view->line[view->lines - 1].dirty = 1;
			if (!last->author) {
				view->lines--;
				FUNC3(last);
			}
		}

		if (state->graph)
			state->graph->done_rendering(graph);
		return true;
	}

	line = buf->data;
	type = FUNC4(line);
	if (type == LINE_COMMIT) {
		bool is_boundary;
		char *author;

		state->in_header = true;
		line += FUNC0("commit ");
		is_boundary = *line == '-';
		while (*line && !FUNC6(*line))
			line++;

		FUNC10(view, commit);

		author = FUNC5(buf, line, 0);

		if (state->first_parent) {
			char *parent = FUNC13(line, ' ');
			char *parent_end = parent ? FUNC13(parent + 1, ' ') : NULL;

			if (parent_end)
				*parent_end = 0;
		}

		FUNC11(view, &state->current, line, is_boundary);

		if (author) {
			char *title = FUNC5(buf, author, 0);

			FUNC12(author, &commit->author, &commit->time);
			if (state->with_graph)
				graph->render_parents(graph, &commit->graph);
			if (title) {
				char *notes = FUNC5(buf, title, 0);

				FUNC8(view, notes && *notes ? LINE_MAIN_ANNOTATED : LINE_MAIN_COMMIT,
						commit, title, false);
			}
		}

		return true;
	}

	if (!*commit->id)
		return true;

	/* Empty line separates the commit header from the log itself. */
	if (*line == '\0')
		state->in_header = false;

	switch (type) {
	case LINE_PP_REFLOG:
		if (!FUNC9(view, state, line + FUNC0("Reflog: ")))
			return false;
		break;

	case LINE_PP_REFLOGMSG:
		line += FUNC0("Reflog message: ");
		FUNC14(state->reflogmsg, line, FUNC15(line));
		break;

	case LINE_PARENT:
		if (state->with_graph)
			graph->add_parent(graph, line + FUNC0("parent "));
		break;

	case LINE_AUTHOR:
		FUNC12(line + FUNC0("author "),
				  &commit->author, &commit->time);
		if (state->with_graph)
			graph->render_parents(graph, &commit->graph);
		break;

	default:
		/* Fill in the commit title if it has not already been set. */
		if (*commit->title)
			break;

		/* Skip lines in the commit header. */
		if (state->in_header)
			break;

		/* Require titles to start with a non-space character at the
		 * offset used by git log. */
		if (FUNC16(line, "    ", 4))
			break;
		line += 4;
		/* Well, if the title starts with a whitespace character,
		 * try to be forgiving.  Otherwise we end up with no title. */
		while (FUNC7(*line))
			line++;
		if (*line == '\0')
			break;
		if (*state->reflogmsg)
			line = state->reflogmsg;
		FUNC8(view, LINE_MAIN_COMMIT, commit, line, false);
	}

	return true;
}