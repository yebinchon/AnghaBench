#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sa_family; } ;
struct TYPE_5__ {int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
union sockaddr_all {TYPE_3__ s; TYPE_2__ v6; TYPE_1__ v4; } ;
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int INET6_ADDRSTRLEN ; 
 scalar_t__ FUNC0 (scalar_t__,void*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*,int) ; 

__attribute__((used)) static int
FUNC3(union sockaddr_all *u, char *buffer, size_t sz) {
	char tmp[INET6_ADDRSTRLEN];
	void * sin_addr = (u->s.sa_family == AF_INET) ? (void*)&u->v4.sin_addr : (void *)&u->v6.sin6_addr;
	int sin_port = FUNC1((u->s.sa_family == AF_INET) ? u->v4.sin_port : u->v6.sin6_port);
	if (FUNC0(u->s.sa_family, sin_addr, tmp, sizeof(tmp))) {
		FUNC2(buffer, sz, "%s:%d", tmp, sin_port);
		return 1;
	} else {
		buffer[0] = '\0';
		return 0;
	}
}