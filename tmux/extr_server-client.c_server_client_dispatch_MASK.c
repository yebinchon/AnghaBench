#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct session {int dummy; } ;
struct msg_stdin_data {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int len; int type; } ;
struct imsg {char* data; TYPE_1__ hdr; } ;
struct TYPE_6__ {int fd; } ;
struct client {int flags; int stdin_closed; int /*<<< orphan*/  activity_time; TYPE_2__ tty; struct session* session; int /*<<< orphan*/  peer; int /*<<< orphan*/  stdin_callback_data; int /*<<< orphan*/  (* stdin_callback ) (struct client*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  stdin_data; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int CLIENT_CONTROL ; 
 int CLIENT_DEAD ; 
 int CLIENT_SUSPENDED ; 
 int IMSG_HEADER_SIZE ; 
#define  MSG_COMMAND 142 
 int /*<<< orphan*/  MSG_EXITED ; 
#define  MSG_EXITING 141 
#define  MSG_IDENTIFY_CLIENTPID 140 
#define  MSG_IDENTIFY_CWD 139 
#define  MSG_IDENTIFY_DONE 138 
#define  MSG_IDENTIFY_ENVIRON 137 
#define  MSG_IDENTIFY_FLAGS 136 
#define  MSG_IDENTIFY_STDIN 135 
#define  MSG_IDENTIFY_TERM 134 
#define  MSG_IDENTIFY_TTYNAME 133 
#define  MSG_RESIZE 132 
#define  MSG_SHELL 131 
#define  MSG_STDIN 130 
#define  MSG_UNLOCK 129 
#define  MSG_WAKEUP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct msg_stdin_data*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct client*) ; 
 int /*<<< orphan*/  FUNC9 (struct client*,struct imsg*) ; 
 int /*<<< orphan*/  FUNC10 (struct client*,struct imsg*) ; 
 int /*<<< orphan*/  FUNC11 (struct client*) ; 
 int /*<<< orphan*/  FUNC12 (struct client*) ; 
 int /*<<< orphan*/  FUNC13 (struct client*) ; 
 int /*<<< orphan*/  FUNC14 (struct client*) ; 
 int /*<<< orphan*/  FUNC15 (struct session*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct client*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC20(struct imsg *imsg, void *arg)
{
	struct client		*c = arg;
	struct msg_stdin_data	 stdindata;
	const char		*data;
	ssize_t			 datalen;
	struct session		*s;

	if (c->flags & CLIENT_DEAD)
		return;

	if (imsg == NULL) {
		FUNC12(c);
		return;
	}

	data = imsg->data;
	datalen = imsg->hdr.len - IMSG_HEADER_SIZE;

	switch (imsg->hdr.type) {
	case MSG_IDENTIFY_FLAGS:
	case MSG_IDENTIFY_TERM:
	case MSG_IDENTIFY_TTYNAME:
	case MSG_IDENTIFY_CWD:
	case MSG_IDENTIFY_STDIN:
	case MSG_IDENTIFY_ENVIRON:
	case MSG_IDENTIFY_CLIENTPID:
	case MSG_IDENTIFY_DONE:
		FUNC10(c, imsg);
		break;
	case MSG_COMMAND:
		FUNC9(c, imsg);
		break;
	case MSG_STDIN:
		if (datalen != sizeof stdindata)
			FUNC2("bad MSG_STDIN size");
		FUNC4(&stdindata, data, sizeof stdindata);

		if (c->stdin_callback == NULL)
			break;
		if (stdindata.size <= 0)
			c->stdin_closed = 1;
		else {
			FUNC0(c->stdin_data, stdindata.data,
			    stdindata.size);
		}
		c->stdin_callback(c, c->stdin_closed, c->stdin_callback_data);
		break;
	case MSG_RESIZE:
		if (datalen != 0)
			FUNC2("bad MSG_RESIZE size");

		if (c->flags & CLIENT_CONTROL)
			break;
		FUNC13(c);
		FUNC8(c);
		FUNC18(&c->tty);
		FUNC7();
		FUNC14(c);
		if (c->session != NULL)
			FUNC5("client-resized", c);
		break;
	case MSG_EXITING:
		if (datalen != 0)
			FUNC2("bad MSG_EXITING size");

		c->session = NULL;
		FUNC17(&c->tty);
		FUNC6(c->peer, MSG_EXITED, -1, NULL, 0);
		break;
	case MSG_WAKEUP:
	case MSG_UNLOCK:
		if (datalen != 0)
			FUNC2("bad MSG_WAKEUP size");

		if (!(c->flags & CLIENT_SUSPENDED))
			break;
		c->flags &= ~CLIENT_SUSPENDED;

		if (c->tty.fd == -1) /* exited in the meantime */
			break;
		s = c->session;

		if (FUNC3(&c->activity_time, NULL) != 0)
			FUNC1("gettimeofday failed");

		FUNC19(&c->tty);
		FUNC14(c);
		FUNC7();

		if (s != NULL)
			FUNC15(s, &c->activity_time);
		break;
	case MSG_SHELL:
		if (datalen != 0)
			FUNC2("bad MSG_SHELL size");

		FUNC11(c);
		break;
	}
}