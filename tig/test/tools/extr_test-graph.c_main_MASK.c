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
struct io {int /*<<< orphan*/  member_0; } ;
struct graph {int /*<<< orphan*/  (* render_parents ) (struct graph*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* add_commit ) (struct graph*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ;int /*<<< orphan*/  symbol_to_utf8; int /*<<< orphan*/  symbol_to_ascii; } ;
struct commit {int /*<<< orphan*/  canvas; int /*<<< orphan*/  id; } ;
struct buffer {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRAPH_DISPLAY_V2 ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* USAGE ; 
 struct commit* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  graph_fn ; 
 struct graph* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct io*) ; 
 scalar_t__ FUNC5 (struct io*,struct buffer*,char,int) ; 
 char* FUNC6 (struct buffer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct io*,char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct graph*,struct commit*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct commit***,size_t,int) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct graph*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct graph*,int /*<<< orphan*/ *) ; 

int
FUNC16(int argc, const char *argv[])
{
	struct graph *graph;
	struct io io = {0};
	struct buffer buf;
	struct commit **commits = NULL;
	size_t ncommits = 0;
	struct commit *commit = NULL;
	bool is_boundary;

	if (FUNC8(STDIN_FILENO)) {
		FUNC2(USAGE);
	}

	if (!(graph = FUNC3(GRAPH_DISPLAY_V2)))
		FUNC2("Failed to allocated graph");

	if (argc > 1 && !FUNC12(argv[1], "--ascii"))
		graph_fn = graph->symbol_to_ascii;
	else
		graph_fn = graph->symbol_to_utf8;

	if (!FUNC7(&io, "%s", ""))
		FUNC2("IO");

	while (!FUNC4(&io)) {
		for (; FUNC5(&io, &buf, '\n', true); ) {
			char *line = buf.data;

			if (!FUNC9(line, "commit ")) {
				line += FUNC0("commit ");
				is_boundary = *line == '-';

				if (is_boundary)
					line++;

				if (!FUNC11(&commits, ncommits, 1))
					FUNC2("Commits");

				commit = FUNC1(1, sizeof(*commit));
				if (!commit)
					FUNC2("Commit");
				commits[ncommits++] = commit;
				FUNC13(commit->id, line);
				graph->add_commit(graph, &commit->canvas, commit->id, line, is_boundary);
				graph->render_parents(graph, &commit->canvas);

				if ((line = FUNC6(&buf, line, 0))) {
					FUNC10(graph, commit, line);
					commit = NULL;
				}

			} else if (!FUNC9(line, "    ")) {

				if (!commit)
					continue;

				FUNC10(graph, commit, line + 4);

				commit = NULL;
			}
		}
	}

	return 0;
}