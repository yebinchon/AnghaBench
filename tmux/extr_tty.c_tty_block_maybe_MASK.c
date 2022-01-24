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
struct tty {int flags; int /*<<< orphan*/  timer; scalar_t__ discarded; int /*<<< orphan*/  out; struct client* client; } ;
struct timeval {int /*<<< orphan*/  tv_usec; } ;
struct client {size_t discarded; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int TTY_BLOCK ; 
 int /*<<< orphan*/  TTY_BLOCK_INTERVAL ; 
 size_t FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC5(struct tty *tty)
{
	struct client	*c = tty->client;
	size_t		 size = FUNC0(tty->out);
	struct timeval	 tv = { .tv_usec = TTY_BLOCK_INTERVAL };

	if (size < FUNC1(tty))
		return (0);

	if (tty->flags & TTY_BLOCK)
		return (1);
	tty->flags |= TTY_BLOCK;

	FUNC4("%s: can't keep up, %zu discarded", c->name, size);

	FUNC2(tty->out, size);
	c->discarded += size;

	tty->discarded = 0;
	FUNC3(&tty->timer, &tv);
	return (1);
}