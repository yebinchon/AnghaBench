#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ state; } ;
struct TYPE_4__ {TYPE_3__ encr_chat; } ;
typedef  TYPE_1__ tgl_peer_t ;
struct in_ev {int /*<<< orphan*/  refcnt; } ;
struct command {int dummy; } ;
struct arg {int /*<<< orphan*/  num; int /*<<< orphan*/  peer_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  print_msg_success_gw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct in_ev*,int /*<<< orphan*/ ) ; 
 scalar_t__ sc_ok ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in_ev*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC0 (arg_num == 2);
  if (ev) { ev->refcnt ++; }
  tgl_peer_t *P = FUNC3 (TLS, args[0].peer_id);
  if (P && P->encr_chat.state == sc_ok) {
    FUNC2 (TLS, &P->encr_chat, args[1].num, print_msg_success_gw, ev);
  } else {
    FUNC1 (TLS, ev, 0);
  }
}