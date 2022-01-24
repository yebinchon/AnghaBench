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
struct TYPE_3__ {uintptr_t opaque; int id; int fd; } ;
struct TYPE_4__ {TYPE_1__ bind; } ;
struct request_package {TYPE_2__ u; } ;

/* Variables and functions */
 int FUNC0 (struct socket_server*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket_server*,struct request_package*,char,int) ; 

int
FUNC2(struct socket_server *ss, uintptr_t opaque, int fd) {
	struct request_package request;
	int id = FUNC0(ss);
	if (id < 0)
		return -1;
	request.u.bind.opaque = opaque;
	request.u.bind.id = id;
	request.u.bind.fd = fd;
	FUNC1(ss, &request, 'B', sizeof(request.u.bind));
	return id;
}