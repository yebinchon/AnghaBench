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
struct msg_command_data {int argc; } ;
struct TYPE_2__ {int len; } ;
struct imsg {TYPE_1__ hdr; scalar_t__ data; } ;
struct cmd_parse_result {int status; char* error; int /*<<< orphan*/  cmdlist; } ;
struct client {int flags; } ;

/* Variables and functions */
 int CLIENT_EXIT ; 
#define  CMD_PARSE_EMPTY 130 
#define  CMD_PARSE_ERROR 129 
#define  CMD_PARSE_SUCCESS 128 
 int /*<<< orphan*/  IMSG_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cmd_parse_result* FUNC2 (int,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,size_t,int,char***) ; 
 int /*<<< orphan*/  FUNC4 (struct client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct msg_command_data*,scalar_t__,int) ; 
 int /*<<< orphan*/  server_client_command_done ; 
 char** FUNC11 (int,int) ; 
 char* FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(struct client *c, struct imsg *imsg)
{
	struct msg_command_data	  data;
	char			 *buf;
	size_t			  len;
	int			  argc;
	char			**argv, *cause;
	struct cmd_parse_result	 *pr;

	if (c->flags & CLIENT_EXIT)
		return;

	if (imsg->hdr.len - IMSG_HEADER_SIZE < sizeof data)
		FUNC8("bad MSG_COMMAND size");
	FUNC10(&data, imsg->data, sizeof data);

	buf = (char *)imsg->data + sizeof data;
	len = imsg->hdr.len  - IMSG_HEADER_SIZE - sizeof data;
	if (len > 0 && buf[len - 1] != '\0')
		FUNC8("bad MSG_COMMAND string");

	argc = data.argc;
	if (FUNC3(buf, len, argc, &argv) != 0) {
		cause = FUNC12("command too long");
		goto error;
	}

	if (argc == 0) {
		argc = 1;
		argv = FUNC11(1, sizeof *argv);
		*argv = FUNC12("new-session");
	}

	pr = FUNC2(argc, argv, NULL);
	switch (pr->status) {
	case CMD_PARSE_EMPTY:
		cause = FUNC12("empty command");
		goto error;
	case CMD_PARSE_ERROR:
		cause = pr->error;
		goto error;
	case CMD_PARSE_SUCCESS:
		break;
	}
	FUNC0(argc, argv);

	FUNC4(c, FUNC6(pr->cmdlist, NULL, NULL, 0));
	FUNC4(c, FUNC5(server_client_command_done, NULL));

	FUNC1(pr->cmdlist);
	return;

error:
	FUNC0(argc, argv);

	FUNC4(c, FUNC7(cause));
	FUNC9(cause);

	c->flags |= CLIENT_EXIT;
}