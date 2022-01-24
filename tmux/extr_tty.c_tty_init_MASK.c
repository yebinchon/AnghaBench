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
struct tty {int fd; int /*<<< orphan*/  term_type; scalar_t__ term_flags; scalar_t__ flags; void* ccolour; scalar_t__ cstyle; struct client* client; void* term_name; } ;
struct client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (char*) ; 

int
FUNC3(struct tty *tty, struct client *c, int fd, char *term)
{
	if (!FUNC0(fd))
		return (-1);

	FUNC1(tty, 0, sizeof *tty);

	if (term == NULL || *term == '\0')
		tty->term_name = FUNC2("unknown");
	else
		tty->term_name = FUNC2(term);

	tty->fd = fd;
	tty->client = c;

	tty->cstyle = 0;
	tty->ccolour = FUNC2("");

	tty->flags = 0;

	tty->term_flags = 0;
	tty->term_type = TTY_UNKNOWN;

	return (0);
}