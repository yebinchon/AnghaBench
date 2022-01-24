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
typedef  int uint8_t ;
struct socket_server {int recvctrl_fd; } ;
struct socket_message {int /*<<< orphan*/ * data; int /*<<< orphan*/  ud; int /*<<< orphan*/  id; int /*<<< orphan*/  opaque; } ;
struct request_udp {int dummy; } ;
struct request_start {int dummy; } ;
struct request_setudp {int dummy; } ;
struct request_setopt {int dummy; } ;
struct request_send {int /*<<< orphan*/  id; } ;
struct request_send_udp {int /*<<< orphan*/ * address; struct request_send send; } ;
struct request_open {int dummy; } ;
struct request_listen {int dummy; } ;
struct request_close {int dummy; } ;
struct request_bind {int dummy; } ;
typedef  int /*<<< orphan*/  header ;

/* Variables and functions */
 int PRIORITY_HIGH ; 
 int PRIORITY_LOW ; 
 int SOCKET_EXIT ; 
 int /*<<< orphan*/  FUNC0 (struct socket_server*,struct request_udp*) ; 
 int FUNC1 (struct socket_server*,struct request_bind*,struct socket_message*) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int) ; 
 int FUNC3 (struct socket_server*,struct request_close*,struct socket_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (struct socket_server*,struct request_listen*,struct socket_message*) ; 
 int FUNC7 (struct socket_server*,struct request_open*,struct socket_message*) ; 
 int FUNC8 (struct socket_server*,struct request_send*,struct socket_message*,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct socket_server*,struct request_setudp*,struct socket_message*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket_server*,struct request_setopt*) ; 
 int FUNC11 (struct socket_server*,struct request_start*,struct socket_message*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC12(struct socket_server *ss, struct socket_message *result) {
	int fd = ss->recvctrl_fd;
	// the length of message is one byte, so 256+8 buffer size is enough.
	uint8_t buffer[256];
	uint8_t header[2];
	FUNC2(fd, header, sizeof(header));
	int type = header[0];
	int len = header[1];
	FUNC2(fd, buffer, len);
	// ctrl command only exist in local fd, so don't worry about endian.
	switch (type) {
	case 'S':
		return FUNC11(ss,(struct request_start *)buffer, result);
	case 'B':
		return FUNC1(ss,(struct request_bind *)buffer, result);
	case 'L':
		return FUNC6(ss,(struct request_listen *)buffer, result);
	case 'K':
		return FUNC3(ss,(struct request_close *)buffer, result);
	case 'O':
		return FUNC7(ss, (struct request_open *)buffer, result);
	case 'X':
		result->opaque = 0;
		result->id = 0;
		result->ud = 0;
		result->data = NULL;
		return SOCKET_EXIT;
	case 'D':
	case 'P': {
		int priority = (type == 'D') ? PRIORITY_HIGH : PRIORITY_LOW;
		struct request_send * request = (struct request_send *) buffer;
		int ret = FUNC8(ss, request, result, priority, NULL);
		FUNC4(ss, request->id);
		return ret;
	}
	case 'A': {
		struct request_send_udp * rsu = (struct request_send_udp *)buffer;
		return FUNC8(ss, &rsu->send, result, PRIORITY_HIGH, rsu->address);
	}
	case 'C':
		return FUNC9(ss, (struct request_setudp *)buffer, result);
	case 'T':
		FUNC10(ss, (struct request_setopt *)buffer);
		return -1;
	case 'U':
		FUNC0(ss, (struct request_udp *)buffer);
		return -1;
	default:
		FUNC5(stderr, "socket-server: Unknown ctrl %c.\n",type);
		return -1;
	};

	return -1;
}