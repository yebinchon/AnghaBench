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
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int
FUNC3(const char * host, int port, int backlog) {
	int family = 0;
	int listen_fd = FUNC1(host, port, IPPROTO_TCP, &family);
	if (listen_fd < 0) {
		return -1;
	}
	if (FUNC2(listen_fd, backlog) == -1) {
		FUNC0(listen_fd);
		return -1;
	}
	return listen_fd;
}