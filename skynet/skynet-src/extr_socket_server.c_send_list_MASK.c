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
struct wb_list {int dummy; } ;
struct socket_server {int dummy; } ;
struct socket_message {int dummy; } ;
struct socket_lock {int dummy; } ;
struct socket {scalar_t__ protocol; } ;

/* Variables and functions */
 scalar_t__ PROTOCOL_TCP ; 
 int FUNC0 (struct socket_server*,struct socket*,struct wb_list*,struct socket_lock*,struct socket_message*) ; 
 int FUNC1 (struct socket_server*,struct socket*,struct wb_list*,struct socket_message*) ; 

__attribute__((used)) static int
FUNC2(struct socket_server *ss, struct socket *s, struct wb_list *list, struct socket_lock *l, struct socket_message *result) {
	if (s->protocol == PROTOCOL_TCP) {
		return FUNC0(ss, s, list, l, result);
	} else {
		return FUNC1(ss, s, list, result);
	}
}