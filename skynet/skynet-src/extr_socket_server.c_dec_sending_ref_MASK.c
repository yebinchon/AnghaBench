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
struct socket_server {struct socket* slot; } ;
struct socket {int id; scalar_t__ protocol; int sending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 size_t FUNC1 (int) ; 
 scalar_t__ PROTOCOL_TCP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline void
FUNC3(struct socket_server *ss, int id) {
	struct socket * s = &ss->slot[FUNC1(id)];
	// Notice: udp may inc sending while type == SOCKET_TYPE_RESERVE
	if (s->id == id && s->protocol == PROTOCOL_TCP) {
		FUNC2((s->sending & 0xffff) != 0);
		FUNC0(&s->sending);
	}
}