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
typedef  void* uint8_t ;
struct socket_server {int /*<<< orphan*/  sendctrl_fd; } ;
struct request_package {void** header; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int) ; 

__attribute__((used)) static void
FUNC4(struct socket_server *ss, struct request_package *request, char type, int len) {
	request->header[6] = (uint8_t)type;
	request->header[7] = (uint8_t)len;
	for (;;) {
		ssize_t n = FUNC3(ss->sendctrl_fd, &request->header[6], len+2);
		if (n<0) {
			if (errno != EINTR) {
				FUNC1(stderr, "socket-server : send ctrl command error %s.\n", FUNC2(errno));
			}
			continue;
		}
		FUNC0(n == len+2);
		return;
	}
}