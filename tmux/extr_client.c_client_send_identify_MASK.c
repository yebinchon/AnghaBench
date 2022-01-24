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
typedef  char pid_t ;

/* Variables and functions */
 size_t IMSG_HEADER_SIZE ; 
 size_t MAX_IMSGSIZE ; 
 int /*<<< orphan*/  MSG_IDENTIFY_CLIENTPID ; 
 int /*<<< orphan*/  MSG_IDENTIFY_CWD ; 
 int /*<<< orphan*/  MSG_IDENTIFY_DONE ; 
 int /*<<< orphan*/  MSG_IDENTIFY_ENVIRON ; 
 int /*<<< orphan*/  MSG_IDENTIFY_FLAGS ; 
 int /*<<< orphan*/  MSG_IDENTIFY_STDIN ; 
 int /*<<< orphan*/  MSG_IDENTIFY_TERM ; 
 int /*<<< orphan*/  MSG_IDENTIFY_TTYNAME ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int client_flags ; 
 int /*<<< orphan*/  client_peer ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char** environ ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(const char *ttynam, const char *cwd)
{
	const char	 *s;
	char		**ss;
	size_t		  sslen;
	int		  fd, flags = client_flags;
	pid_t		  pid;

	FUNC4(client_peer, MSG_IDENTIFY_FLAGS, -1, &flags, sizeof flags);

	if ((s = FUNC2("TERM")) == NULL)
		s = "";
	FUNC4(client_peer, MSG_IDENTIFY_TERM, -1, s, FUNC5(s) + 1);

	FUNC4(client_peer, MSG_IDENTIFY_TTYNAME, -1, ttynam,
	    FUNC5(ttynam) + 1);
	FUNC4(client_peer, MSG_IDENTIFY_CWD, -1, cwd, FUNC5(cwd) + 1);

	if ((fd = FUNC0(STDIN_FILENO)) == -1)
		FUNC1("dup failed");
	FUNC4(client_peer, MSG_IDENTIFY_STDIN, fd, NULL, 0);

	pid = FUNC3();
	FUNC4(client_peer, MSG_IDENTIFY_CLIENTPID, -1, &pid, sizeof pid);

	for (ss = environ; *ss != NULL; ss++) {
		sslen = FUNC5(*ss) + 1;
		if (sslen > MAX_IMSGSIZE - IMSG_HEADER_SIZE)
			continue;
		FUNC4(client_peer, MSG_IDENTIFY_ENVIRON, -1, *ss, sslen);
	}

	FUNC4(client_peer, MSG_IDENTIFY_DONE, -1, NULL, 0);
}