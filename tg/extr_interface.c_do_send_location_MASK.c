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
struct in_ev {int /*<<< orphan*/  refcnt; } ;
struct command {int dummy; } ;
struct arg {int /*<<< orphan*/  dval; int /*<<< orphan*/  peer_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  print_msg_success_gw ; 
 int /*<<< orphan*/  reply_id ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in_ev*) ; 

void FUNC3 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC1 (arg_num == 3);
  if (ev) { ev->refcnt ++; }
  FUNC2 (TLS, args[0].peer_id, args[1].dval, args[2].dval, FUNC0(reply_id), print_msg_success_gw, ev);
}