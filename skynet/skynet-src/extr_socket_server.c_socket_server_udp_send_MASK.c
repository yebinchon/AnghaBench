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
union sockaddr_all {int /*<<< orphan*/  s; } ;
typedef  int uint8_t ;
struct socket_udp_address {int dummy; } ;
struct socket_server {struct socket* slot; } ;
struct socket_sendbuffer {int id; scalar_t__ buffer; } ;
struct socket_lock {int dummy; } ;
struct socket {int id; scalar_t__ type; int /*<<< orphan*/  fd; } ;
struct send_object {int /*<<< orphan*/  (* free_func ) (void*) ;int /*<<< orphan*/  sz; int /*<<< orphan*/  buffer; } ;
struct TYPE_4__ {int id; int /*<<< orphan*/  sz; int /*<<< orphan*/  buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  address; TYPE_1__ send; } ;
struct TYPE_6__ {TYPE_2__ send_udp; } ;
struct request_package {TYPE_3__ u; } ;
typedef  scalar_t__ socklen_t ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
#define  PROTOCOL_UDP 129 
#define  PROTOCOL_UDPv6 128 
 scalar_t__ SOCKET_TYPE_INVALID ; 
 scalar_t__ FUNC1 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket_sendbuffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct socket_server*,struct socket_sendbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket_server*,struct send_object*,struct socket_sendbuffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket_server*,struct request_package*,char,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,struct socket_lock*) ; 
 scalar_t__ FUNC9 (struct socket_lock*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket_lock*) ; 
 int /*<<< orphan*/  FUNC11 (struct socket_server*,struct socket*,int) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 scalar_t__ FUNC14 (struct socket*,int const*,union sockaddr_all*) ; 

int 
FUNC15(struct socket_server *ss, const struct socket_udp_address *addr, struct socket_sendbuffer *buf) {
	int id = buf->id;
	struct socket * s = &ss->slot[FUNC0(id)];
	if (s->id != id || s->type == SOCKET_TYPE_INVALID) {
		FUNC3(ss, buf);
		return -1;
	}

	const uint8_t *udp_address = (const uint8_t *)addr;
	int addrsz;
	switch (udp_address[0]) {
	case PROTOCOL_UDP:
		addrsz = 1+2+4;		// 1 type, 2 port, 4 ipv4
		break;
	case PROTOCOL_UDPv6:
		addrsz = 1+2+16;	// 1 type, 2 port, 16 ipv6
		break;
	default:
		FUNC3(ss, buf);
		return -1;
	}

	struct socket_lock l;
	FUNC8(s, &l);

	if (FUNC1(s,id) && FUNC9(&l)) {
		// may be we can send directly, double check
		if (FUNC1(s,id)) {
			// send directly
			struct send_object so;
			FUNC5(ss, &so, buf);
			union sockaddr_all sa;
			socklen_t sasz = FUNC14(s, udp_address, &sa);
			if (sasz == 0) {
				FUNC10(&l);
				so.free_func((void *)buf->buffer);
				return -1;
			}
			int n = FUNC7(s->fd, so.buffer, so.sz, 0, &sa.s, sasz);
			if (n >= 0) {
				// sendto succ
				FUNC11(ss,s,n);
				FUNC10(&l);
				so.free_func((void *)buf->buffer);
				return 0;
			}
		}
		FUNC10(&l);
		// let socket thread try again, udp doesn't care the order
	}

	struct request_package request;
	request.u.send_udp.send.id = id;
	request.u.send_udp.send.buffer = FUNC2(buf, &request.u.send_udp.send.sz);

	FUNC4(request.u.send_udp.address, udp_address, addrsz);

	FUNC6(ss, &request, 'A', sizeof(request.u.send_udp.send)+addrsz);
	return 0;
}