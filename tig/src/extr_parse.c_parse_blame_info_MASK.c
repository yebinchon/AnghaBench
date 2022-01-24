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
struct blame_commit {void* filename; void* parent_filename; int /*<<< orphan*/  parent_id; int /*<<< orphan*/  title; int /*<<< orphan*/  time; int /*<<< orphan*/  author; } ;

/* Variables and functions */
 scalar_t__ SIZEOF_REV ; 
 int /*<<< orphan*/  SIZEOF_STR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 void* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC9 (char*) ; 

bool
FUNC10(struct blame_commit *commit, char author[SIZEOF_STR], char *line)
{
	if (FUNC2("author ", &line)) {
		FUNC8(author, SIZEOF_STR, line, FUNC9(line));

	} else if (FUNC2("author-mail ", &line)) {
		char *end = FUNC5(line, '>');

		if (end)
			*end = 0;
		if (*line == '<')
			line++;
		commit->author = FUNC0(author, line);
		author[0] = 0;

	} else if (FUNC2("author-time ", &line)) {
		FUNC3(&commit->time, line);

	} else if (FUNC2("author-tz ", &line)) {
		FUNC4(&commit->time, line);

	} else if (FUNC2("summary ", &line)) {
		FUNC7(commit->title, line, FUNC9(line));

	} else if (FUNC2("previous ", &line)) {
		if (FUNC9(line) <= SIZEOF_REV)
			return false;
		FUNC6(commit->parent_id, line);
		line += SIZEOF_REV;
		commit->parent_filename = FUNC1(line);
		if (!commit->parent_filename)
			return true;

	} else if (FUNC2("filename ", &line)) {
		commit->filename = FUNC1(line);
		return true;
	}

	return false;
}