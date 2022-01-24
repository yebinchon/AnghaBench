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
struct sigaction {int /*<<< orphan*/  sa_handler; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; } ;
struct TYPE_2__ {size_t len; int type; } ;
struct imsg {char* data; TYPE_1__ hdr; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_EXIT_DETACHED ; 
 int /*<<< orphan*/  CLIENT_EXIT_DETACHED_HUP ; 
 int /*<<< orphan*/  CLIENT_EXIT_EXITED ; 
 int /*<<< orphan*/  CLIENT_EXIT_SERVER_EXITED ; 
 size_t IMSG_HEADER_SIZE ; 
#define  MSG_DETACH 135 
#define  MSG_DETACHKILL 134 
#define  MSG_EXEC 133 
#define  MSG_EXIT 132 
#define  MSG_EXITED 131 
 int /*<<< orphan*/  MSG_EXITING ; 
#define  MSG_LOCK 130 
#define  MSG_SHUTDOWN 129 
#define  MSG_SUSPEND 128 
 int /*<<< orphan*/  MSG_UNLOCK ; 
 int /*<<< orphan*/  SA_RESTART ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIG_DFL ; 
 void* client_execcmd ; 
 void* client_execshell ; 
 int /*<<< orphan*/  client_exitreason ; 
 void* client_exitsession ; 
 int client_exittype ; 
 int client_exitval ; 
 int /*<<< orphan*/  client_peer ; 
 int /*<<< orphan*/  client_proc ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 void* FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(struct imsg *imsg)
{
	struct sigaction	 sigact;
	char			*data;
	ssize_t			 datalen;

	data = imsg->data;
	datalen = imsg->hdr.len - IMSG_HEADER_SIZE;

	switch (imsg->hdr.type) {
	case MSG_DETACH:
	case MSG_DETACHKILL:
		if (datalen == 0 || data[datalen - 1] != '\0')
			FUNC1("bad MSG_DETACH string");

		client_exitsession = FUNC11(data);
		client_exittype = imsg->hdr.type;
		if (imsg->hdr.type == MSG_DETACHKILL)
			client_exitreason = CLIENT_EXIT_DETACHED_HUP;
		else
			client_exitreason = CLIENT_EXIT_DETACHED;
		FUNC6(client_peer, MSG_EXITING, -1, NULL, 0);
		break;
	case MSG_EXEC:
		if (datalen == 0 || data[datalen - 1] != '\0' ||
		    FUNC9(data) + 1 == (size_t)datalen)
			FUNC1("bad MSG_EXEC string");
		client_execcmd = FUNC11(data);
		client_execshell = FUNC11(data + FUNC9(data) + 1);

		client_exittype = imsg->hdr.type;
		FUNC6(client_peer, MSG_EXITING, -1, NULL, 0);
		break;
	case MSG_EXIT:
		if (datalen != 0 && datalen != sizeof (int))
			FUNC1("bad MSG_EXIT size");

		FUNC6(client_peer, MSG_EXITING, -1, NULL, 0);
		client_exitreason = CLIENT_EXIT_EXITED;
		break;
	case MSG_EXITED:
		if (datalen != 0)
			FUNC1("bad MSG_EXITED size");

		FUNC5(client_proc);
		break;
	case MSG_SHUTDOWN:
		if (datalen != 0)
			FUNC1("bad MSG_SHUTDOWN size");

		FUNC6(client_peer, MSG_EXITING, -1, NULL, 0);
		client_exitreason = CLIENT_EXIT_SERVER_EXITED;
		client_exitval = 1;
		break;
	case MSG_SUSPEND:
		if (datalen != 0)
			FUNC1("bad MSG_SUSPEND size");

		FUNC4(&sigact, 0, sizeof sigact);
		FUNC8(&sigact.sa_mask);
		sigact.sa_flags = SA_RESTART;
		sigact.sa_handler = SIG_DFL;
		if (FUNC7(SIGTSTP, &sigact, NULL) != 0)
			FUNC0("sigaction failed");
		FUNC3(FUNC2(), SIGTSTP);
		break;
	case MSG_LOCK:
		if (datalen == 0 || data[datalen - 1] != '\0')
			FUNC1("bad MSG_LOCK string");

		FUNC10(data);
		FUNC6(client_peer, MSG_UNLOCK, -1, NULL, 0);
		break;
	}
}