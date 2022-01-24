#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket_server {char* buffer; TYPE_1__* slot; int /*<<< orphan*/  event_fd; } ;
struct socket_message {int id; char* data; scalar_t__ ud; int /*<<< orphan*/  opaque; } ;
struct socket {int /*<<< orphan*/  fd; int /*<<< orphan*/  type; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct request_open {int id; int port; int /*<<< orphan*/  opaque; int /*<<< orphan*/  host; } ;
struct addrinfo {scalar_t__ ai_family; struct sockaddr* ai_addr; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  ai_hints ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_UNSPEC ; 
 scalar_t__ EINPROGRESS ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  PROTOCOL_TCP ; 
 int SOCKET_ERR ; 
 int SOCKET_OPEN ; 
 int /*<<< orphan*/  SOCKET_TYPE_CONNECTED ; 
 int /*<<< orphan*/  SOCKET_TYPE_CONNECTING ; 
 int /*<<< orphan*/  SOCKET_TYPE_INVALID ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC6 (scalar_t__,void*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 struct socket* FUNC8 (struct socket_server*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 char* FUNC14 (scalar_t__) ; 

__attribute__((used)) static int
FUNC15(struct socket_server *ss, struct request_open * request, struct socket_message *result) {
	int id = request->id;
	result->opaque = request->opaque;
	result->id = id;
	result->ud = 0;
	result->data = NULL;
	struct socket *ns;
	int status;
	struct addrinfo ai_hints;
	struct addrinfo *ai_list = NULL;
	struct addrinfo *ai_ptr = NULL;
	char port[16];
	FUNC13(port, "%d", request->port);
	FUNC7(&ai_hints, 0, sizeof( ai_hints ) );
	ai_hints.ai_family = AF_UNSPEC;
	ai_hints.ai_socktype = SOCK_STREAM;
	ai_hints.ai_protocol = IPPROTO_TCP;

	status = FUNC5( request->host, port, &ai_hints, &ai_list );
	if ( status != 0 ) {
		result->data = (void *)FUNC4(status);
		goto _failed;
	}
	int sock= -1;
	for (ai_ptr = ai_list; ai_ptr != NULL; ai_ptr = ai_ptr->ai_next ) {
		sock = FUNC9( ai_ptr->ai_family, ai_ptr->ai_socktype, ai_ptr->ai_protocol );
		if ( sock < 0 ) {
			continue;
		}
		FUNC10(sock);
		FUNC11(sock);
		status = FUNC2( sock, ai_ptr->ai_addr, ai_ptr->ai_addrlen);
		if ( status != 0 && errno != EINPROGRESS) {
			FUNC1(sock);
			sock = -1;
			continue;
		}
		break;
	}

	if (sock < 0) {
		result->data = FUNC14(errno);
		goto _failed;
	}

	ns = FUNC8(ss, id, sock, PROTOCOL_TCP, request->opaque, true);
	if (ns == NULL) {
		FUNC1(sock);
		result->data = "reach skynet socket number limit";
		goto _failed;
	}

	if(status == 0) {
		ns->type = SOCKET_TYPE_CONNECTED;
		struct sockaddr * addr = ai_ptr->ai_addr;
		void * sin_addr = (ai_ptr->ai_family == AF_INET) ? (void*)&((struct sockaddr_in *)addr)->sin_addr : (void*)&((struct sockaddr_in6 *)addr)->sin6_addr;
		if (FUNC6(ai_ptr->ai_family, sin_addr, ss->buffer, sizeof(ss->buffer))) {
			result->data = ss->buffer;
		}
		FUNC3( ai_list );
		return SOCKET_OPEN;
	} else {
		ns->type = SOCKET_TYPE_CONNECTING;
		FUNC12(ss->event_fd, ns->fd, ns, true);
	}

	FUNC3( ai_list );
	return -1;
_failed:
	FUNC3( ai_list );
	ss->slot[FUNC0(id)].type = SOCKET_TYPE_INVALID;
	return SOCKET_ERR;
}