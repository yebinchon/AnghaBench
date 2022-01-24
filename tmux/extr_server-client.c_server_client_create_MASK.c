#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int fd; int sx; int sy; } ;
struct client {int references; int fd; int /*<<< orphan*/  click_timer; int /*<<< orphan*/  repeat_timer; TYPE_2__* keytable; int /*<<< orphan*/  flags; scalar_t__ prompt_index; int /*<<< orphan*/ * prompt_buffer; int /*<<< orphan*/ * prompt_string; int /*<<< orphan*/  message_log; int /*<<< orphan*/ * message_string; TYPE_1__ tty; int /*<<< orphan*/ * last_session; int /*<<< orphan*/ * session; int /*<<< orphan*/ * title; int /*<<< orphan*/ * stderr_data; int /*<<< orphan*/ * stdout_data; int /*<<< orphan*/ * stdin_data; int /*<<< orphan*/  queue; int /*<<< orphan*/ * cwd; int /*<<< orphan*/  environ; int /*<<< orphan*/  creation_time; int /*<<< orphan*/  activity_time; int /*<<< orphan*/  peer; } ;
struct TYPE_4__ {int /*<<< orphan*/  references; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_FOCUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clients ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct client*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct client*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct client*) ; 
 int /*<<< orphan*/  server_client_click_timer ; 
 int /*<<< orphan*/  server_client_dispatch ; 
 int /*<<< orphan*/  server_client_repeat_timer ; 
 int /*<<< orphan*/  server_proc ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct client*) ; 
 struct client* FUNC14 (int,int) ; 

struct client *
FUNC15(int fd)
{
	struct client	*c;

	FUNC12(fd, 0);

	c = FUNC14(1, sizeof *c);
	c->references = 1;
	c->peer = FUNC11(server_proc, fd, server_client_dispatch, c);

	if (FUNC7(&c->creation_time, NULL) != 0)
		FUNC5("gettimeofday failed");
	FUNC10(&c->activity_time, &c->creation_time, sizeof c->activity_time);

	c->environ = FUNC2();

	c->fd = -1;
	c->cwd = NULL;

	FUNC0(&c->queue);

	c->stdin_data = FUNC3();
	if (c->stdin_data == NULL)
		FUNC6("out of memory");
	c->stdout_data = FUNC3();
	if (c->stdout_data == NULL)
		FUNC6("out of memory");
	c->stderr_data = FUNC3();
	if (c->stderr_data == NULL)
		FUNC6("out of memory");

	c->tty.fd = -1;
	c->title = NULL;

	c->session = NULL;
	c->last_session = NULL;

	c->tty.sx = 80;
	c->tty.sy = 24;

	FUNC13(c);

	c->message_string = NULL;
	FUNC0(&c->message_log);

	c->prompt_string = NULL;
	c->prompt_buffer = NULL;
	c->prompt_index = 0;

	c->flags |= CLIENT_FOCUSED;

	c->keytable = FUNC8("root", 1);
	c->keytable->references++;

	FUNC4(&c->repeat_timer, server_client_repeat_timer, c);
	FUNC4(&c->click_timer, server_client_click_timer, c);

	FUNC1(&clients, c, entry);
	FUNC9("new client %p", c);
	return (c);
}