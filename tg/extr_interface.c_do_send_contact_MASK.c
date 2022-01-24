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
struct arg {int /*<<< orphan*/  peer_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  print_msg_success_gw ; 
 int /*<<< orphan*/  reply_id ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in_ev*) ; 

void FUNC4 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC2 (arg_num == 4);
  if (ev) { ev->refcnt ++; }
  FUNC3 (TLS, args[0].peer_id, FUNC0 (1), FUNC0 (2), FUNC0 (3), FUNC1(reply_id), print_msg_success_gw, ev);
}