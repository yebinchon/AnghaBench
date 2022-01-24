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
struct io {scalar_t__ error; int /*<<< orphan*/  pipe; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (struct io*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 

bool
FUNC2(struct io *io, const void *buf, size_t bufsize)
{
	const char *bytes = buf;
	size_t written = 0;

	while (!FUNC0(io) && written < bufsize) {
		ssize_t size;

		size = FUNC1(io->pipe, bytes + written, bufsize - written);
		if (size < 0 && (errno == EAGAIN || errno == EINTR))
			continue;
		else if (size == -1)
			io->error = errno;
		else
			written += size;
	}

	return written == bufsize;
}