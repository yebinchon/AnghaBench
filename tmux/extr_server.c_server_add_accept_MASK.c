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
struct timeval {int member_0; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  server_accept ; 
 int /*<<< orphan*/  server_ev_accept ; 
 int server_fd ; 

void
FUNC4(int timeout)
{
	struct timeval tv = { timeout, 0 };

	if (server_fd == -1)
		return;

	if (FUNC2(&server_ev_accept))
		FUNC1(&server_ev_accept);

	if (timeout == 0) {
		FUNC3(&server_ev_accept, server_fd, EV_READ, server_accept,
		    NULL);
		FUNC0(&server_ev_accept, NULL);
	} else {
		FUNC3(&server_ev_accept, server_fd, EV_TIMEOUT,
		    server_accept, NULL);
		FUNC0(&server_ev_accept, &tv);
	}
}