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
struct socket {int id; scalar_t__ type; scalar_t__ udpconnecting; } ;

/* Variables and functions */
 scalar_t__ SOCKET_TYPE_CONNECTED ; 
 scalar_t__ FUNC0 (struct socket*) ; 

__attribute__((used)) static inline int
FUNC1(struct socket *s, int id) {
	return s->id == id && FUNC0(s) && s->type == SOCKET_TYPE_CONNECTED && s->udpconnecting == 0;
}