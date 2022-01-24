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
struct termios {int dummy; } ;
struct session {int references; int /*<<< orphan*/  creation_time; int /*<<< orphan*/  id; int /*<<< orphan*/ * name; int /*<<< orphan*/ * tio; struct options* options; struct environ* environ; int /*<<< orphan*/  windows; int /*<<< orphan*/  lastw; int /*<<< orphan*/ * curw; void* cwd; scalar_t__ flags; } ;
struct options {int dummy; } ;
struct environ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct session*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct termios*,int) ; 
 int /*<<< orphan*/  next_session_id ; 
 int /*<<< orphan*/  FUNC9 (struct session*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sessions ; 
 int /*<<< orphan*/  FUNC10 (struct session*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char*,char const*,...) ; 
 struct session* FUNC12 (int,int) ; 
 int /*<<< orphan*/ * FUNC13 (int) ; 
 void* FUNC14 (char const*) ; 

struct session *
FUNC15(const char *prefix, const char *name, const char *cwd,
    struct environ *env, struct options *oo, struct termios *tio)
{
	struct session	*s;

	s = FUNC12(1, sizeof *s);
	s->references = 1;
	s->flags = 0;

	s->cwd = FUNC14(cwd);

	s->curw = NULL;
	FUNC3(&s->lastw);
	FUNC1(&s->windows);

	s->environ = env;
	s->options = oo;

	FUNC10(s);

	s->tio = NULL;
	if (tio != NULL) {
		s->tio = FUNC13(sizeof *s->tio);
		FUNC8(s->tio, tio, sizeof *s->tio);
	}

	if (name != NULL) {
		s->name = FUNC14(name);
		s->id = next_session_id++;
	} else {
		s->name = NULL;
		do {
			s->id = next_session_id++;
			FUNC5(s->name);
			if (prefix != NULL)
				FUNC11(&s->name, "%s-%u", prefix, s->id);
			else
				FUNC11(&s->name, "%u", s->id);
		} while (FUNC0(sessions, &sessions, s) != NULL);
	}
	FUNC2(sessions, &sessions, s);

	FUNC7("new session %s $%u", s->name, s->id);

	if (FUNC6(&s->creation_time, NULL) != 0)
		FUNC4("gettimeofday failed");
	FUNC9(s, &s->creation_time);

	return (s);
}