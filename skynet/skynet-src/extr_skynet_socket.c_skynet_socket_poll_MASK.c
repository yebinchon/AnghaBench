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
struct socket_server {int dummy; } ;
struct socket_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SKYNET_SOCKET_TYPE_ACCEPT ; 
 int /*<<< orphan*/  SKYNET_SOCKET_TYPE_CLOSE ; 
 int /*<<< orphan*/  SKYNET_SOCKET_TYPE_CONNECT ; 
 int /*<<< orphan*/  SKYNET_SOCKET_TYPE_DATA ; 
 int /*<<< orphan*/  SKYNET_SOCKET_TYPE_ERROR ; 
 int /*<<< orphan*/  SKYNET_SOCKET_TYPE_UDP ; 
 int /*<<< orphan*/  SKYNET_SOCKET_TYPE_WARNING ; 
#define  SOCKET_ACCEPT 135 
#define  SOCKET_CLOSE 134 
#define  SOCKET_DATA 133 
#define  SOCKET_ERR 132 
#define  SOCKET_EXIT 131 
#define  SOCKET_OPEN 130 
 struct socket_server* SOCKET_SERVER ; 
#define  SOCKET_UDP 129 
#define  SOCKET_WARNING 128 
 int /*<<< orphan*/  FUNC0 (struct socket_server*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct socket_message*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (struct socket_server*,struct socket_message*,int*) ; 

int 
FUNC4() {
	struct socket_server *ss = SOCKET_SERVER;
	FUNC0(ss);
	struct socket_message result;
	int more = 1;
	int type = FUNC3(ss, &result, &more);
	switch (type) {
	case SOCKET_EXIT:
		return 0;
	case SOCKET_DATA:
		FUNC1(SKYNET_SOCKET_TYPE_DATA, false, &result);
		break;
	case SOCKET_CLOSE:
		FUNC1(SKYNET_SOCKET_TYPE_CLOSE, false, &result);
		break;
	case SOCKET_OPEN:
		FUNC1(SKYNET_SOCKET_TYPE_CONNECT, true, &result);
		break;
	case SOCKET_ERR:
		FUNC1(SKYNET_SOCKET_TYPE_ERROR, true, &result);
		break;
	case SOCKET_ACCEPT:
		FUNC1(SKYNET_SOCKET_TYPE_ACCEPT, true, &result);
		break;
	case SOCKET_UDP:
		FUNC1(SKYNET_SOCKET_TYPE_UDP, false, &result);
		break;
	case SOCKET_WARNING:
		FUNC1(SKYNET_SOCKET_TYPE_WARNING, false, &result);
		break;
	default:
		FUNC2(NULL, "Unknown socket message type %d.",type);
		return -1;
	}
	if (more) {
		return -1;
	}
	return 1;
}