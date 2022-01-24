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
struct io {size_t bufalloc; size_t bufsize; int eof; int /*<<< orphan*/  buf; int /*<<< orphan*/  bufpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct io*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,size_t) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,size_t) ; 

bool
FUNC4(struct io *io, const char *str)
{
	size_t len = FUNC2(str);

	FUNC0(io);

	if (!FUNC1(&io->buf, io->bufalloc, len))
		return false;

	io->bufsize = io->bufalloc = len;
	io->bufpos = io->buf;
	io->eof = true;
	FUNC3(io->buf, str, len);

	return true;
}