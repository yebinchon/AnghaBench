#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  c_cflag; } ;
struct ttyfd {scalar_t__ fd; TYPE_1__ tio_orig; TYPE_1__ tio_new; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCAL ; 
 scalar_t__ STDIN_FILENO ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ tio_stdio_orig ; 
 int /*<<< orphan*/  ttyclose ; 

__attribute__((used)) static void
FUNC4(struct ttyfd *tf)
{

	FUNC2(tf->fd, &tf->tio_orig);

	tf->tio_new = tf->tio_orig;
	FUNC1(&tf->tio_new);
	tf->tio_new.c_cflag |= CLOCAL;
	FUNC3(tf->fd, TCSANOW, &tf->tio_new);

	if (tf->fd == STDIN_FILENO) {
		tio_stdio_orig = tf->tio_orig;
		FUNC0(ttyclose);
	}
}