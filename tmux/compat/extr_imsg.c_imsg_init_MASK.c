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
struct TYPE_2__ {int fd; } ;
struct imsgbuf {int fd; int /*<<< orphan*/  fds; int /*<<< orphan*/  pid; TYPE_1__ w; int /*<<< orphan*/  r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(struct imsgbuf *ibuf, int fd)
{
	FUNC3(&ibuf->w);
	FUNC2(&ibuf->r, 0, sizeof(ibuf->r));
	ibuf->fd = fd;
	ibuf->w.fd = fd;
	ibuf->pid = FUNC1();
	FUNC0(&ibuf->fds);
}