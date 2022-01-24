#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket_server {int dummy; } ;
struct TYPE_3__ {int id; int fd; uintptr_t opaque; int family; } ;
struct TYPE_4__ {TYPE_1__ udp; } ;
struct request_package {TYPE_2__ u; } ;

/* Variables and functions */
 int AF_INET ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct socket_server*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket_server*,struct request_package*,unsigned char,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int 
FUNC6(struct socket_server *ss, uintptr_t opaque, const char * addr, int port) {
	int fd;
	int family;
	if (port != 0 || addr != NULL) {
		// bind
		fd = FUNC1(addr, port, IPPROTO_UDP, &family);
		if (fd < 0) {
			return -1;
		}
	} else {
		family = AF_INET;
		fd = FUNC4(family, SOCK_DGRAM, 0);
		if (fd < 0) {
			return -1;
		}
	}
	FUNC5(fd);

	int id = FUNC2(ss);
	if (id < 0) {
		FUNC0(fd);
		return -1;
	}
	struct request_package request;
	request.u.udp.id = id;
	request.u.udp.fd = fd;
	request.u.udp.opaque = opaque;
	request.u.udp.family = family;

	FUNC3(ss, &request, 'U', sizeof(request.u.udp));	
	return id;
}