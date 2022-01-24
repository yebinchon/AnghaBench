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
struct job {int dummy; } ;
struct cmd_run_shell_data {char* cmd; int /*<<< orphan*/ * item; } ;
struct bufferevent {int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct job*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 struct cmd_run_shell_data* FUNC10 (struct job*) ; 
 struct bufferevent* FUNC11 (struct job*) ; 
 int FUNC12 (struct job*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (char**,char*,char*,int) ; 
 char* FUNC15 (size_t) ; 

__attribute__((used)) static void
FUNC16(struct job *job)
{
	struct cmd_run_shell_data	*cdata = FUNC10(job);
	struct bufferevent		*event = FUNC11(job);
	char				*cmd = cdata->cmd, *msg = NULL, *line;
	size_t				 size;
	int				 retcode, status;

	do {
		if ((line = FUNC8(event->input)) != NULL) {
			FUNC6(job, line);
			FUNC9(line);
		}
	} while (line != NULL);

	size = FUNC1(event->input);
	if (size != 0) {
		line = FUNC15(size + 1);
		FUNC13(line, FUNC0(event->input), size);
		line[size] = '\0';

		FUNC6(job, line);

		FUNC9(line);
	}

	status = FUNC12(job);
	if (FUNC3(status)) {
		if ((retcode = FUNC2(status)) != 0)
			FUNC14(&msg, "'%s' returned %d", cmd, retcode);
	} else if (FUNC4(status)) {
		retcode = FUNC5(status);
		FUNC14(&msg, "'%s' terminated by signal %d", cmd, retcode);
	}
	if (msg != NULL)
		FUNC6(job, msg);
	FUNC9(msg);

	if (cdata->item != NULL)
		FUNC7(cdata->item);
}