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
struct socket_server {int /*<<< orphan*/  event_fd; struct socket* slot; } ;
struct socket_sendbuffer {int id; scalar_t__ buffer; } ;
struct socket_lock {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  udp_address; } ;
struct socket {int id; scalar_t__ type; scalar_t__ protocol; int /*<<< orphan*/  fd; scalar_t__ dw_offset; int /*<<< orphan*/  dw_size; void* dw_buffer; TYPE_1__ p; } ;
struct send_object {scalar_t__ sz; int /*<<< orphan*/  (* free_func ) (void*) ;int /*<<< orphan*/  buffer; } ;
struct TYPE_5__ {int id; int /*<<< orphan*/  sz; void* buffer; } ;
struct TYPE_6__ {TYPE_2__ send; } ;
struct request_package {TYPE_3__ u; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ socklen_t ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 scalar_t__ PROTOCOL_TCP ; 
 scalar_t__ SOCKET_TYPE_INVALID ; 
 scalar_t__ FUNC1 (struct socket*,int) ; 
 void* FUNC2 (struct socket_sendbuffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct socket_server*,struct socket_sendbuffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct socket_server*,struct send_object*,struct socket_sendbuffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket_server*,struct request_package*,char,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,struct socket_lock*) ; 
 scalar_t__ FUNC10 (struct socket_lock*) ; 
 int /*<<< orphan*/  FUNC11 (struct socket_lock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct socket_server*,struct socket*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 scalar_t__ FUNC16 (struct socket*,int /*<<< orphan*/ ,union sockaddr_all*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int 
FUNC18(struct socket_server *ss, struct socket_sendbuffer *buf) {
	int id = buf->id;
	struct socket * s = &ss->slot[FUNC0(id)];
	if (s->id != id || s->type == SOCKET_TYPE_INVALID) {
		FUNC4(ss, buf);
		return -1;
	}

	struct socket_lock l;
	FUNC9(s, &l);

	if (FUNC1(s,id) && FUNC10(&l)) {
		// may be we can send directly, double check
		if (FUNC1(s,id)) {
			// send directly
			struct send_object so;
			FUNC6(ss, &so, buf);
			ssize_t n;
			if (s->protocol == PROTOCOL_TCP) {
				n = FUNC17(s->fd, so.buffer, so.sz);
			} else {
				union sockaddr_all sa;
				socklen_t sasz = FUNC16(s, s->p.udp_address, &sa);
				if (sasz == 0) {
					FUNC3(stderr, "socket-server : set udp (%d) address first.\n", id);
					FUNC11(&l);
					so.free_func((void *)buf->buffer);
					return -1;
				}
				n = FUNC8(s->fd, so.buffer, so.sz, 0, &sa.s, sasz);
			}
			if (n<0) {
				// ignore error, let socket thread try again
				n = 0;
			}
			FUNC13(ss,s,n);
			if (n == so.sz) {
				// write done
				FUNC11(&l);
				so.free_func((void *)buf->buffer);
				return 0;
			}
			// write failed, put buffer into s->dw_* , and let socket thread send it. see send_buffer()
			s->dw_buffer = FUNC2(buf, &s->dw_size);
			s->dw_offset = n;

			FUNC12(ss->event_fd, s->fd, s, true);

			FUNC11(&l);
			return 0;
		}
		FUNC11(&l);
	}

	FUNC5(s, id);

	struct request_package request;
	request.u.send.id = id;
	request.u.send.buffer = FUNC2(buf, &request.u.send.sz);

	FUNC7(ss, &request, 'D', sizeof(request.u.send));
	return 0;
}