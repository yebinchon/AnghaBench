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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ epoll_fd ; 
 int /*<<< orphan*/  io_loop ; 
 int /*<<< orphan*/  io_worker ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3()
{
  epoll_fd = FUNC1(10);
  FUNC0(epoll_fd >= 0);
  FUNC2(&io_worker, NULL, io_loop, NULL);
}