#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ err; } ;
typedef  TYPE_1__ Connection ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

const char *
FUNC4(Connection *conn)
{
	const char *errmsg = "no connection error";

#ifdef WIN32
	if (IS_SOCKET_ERROR(conn->err))
		errmsg = pgwin32_socket_strerror(WSAGetLastError());
#else
	if (FUNC0(conn->err))
		errmsg = FUNC3(errno);
#endif

	conn->err = 0;

	return errmsg;
}