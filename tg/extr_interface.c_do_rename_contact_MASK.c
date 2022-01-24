#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ phone; } ;
struct TYPE_5__ {TYPE_1__ user; } ;
typedef  TYPE_2__ tgl_peer_t ;
struct in_ev {int /*<<< orphan*/  refcnt; } ;
struct command {int dummy; } ;
struct arg {scalar_t__ str; int /*<<< orphan*/  peer_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct in_ev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  print_user_list_gw ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in_ev*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC0 (arg_num == 3);
  
  tgl_peer_t *P = FUNC4 (TLS, args[0].peer_id);
  if (P && P->user.phone) {
    if (ev) { ev->refcnt ++; }
    FUNC3 (TLS, P->user.phone, FUNC2 (P->user.phone), args[1].str, FUNC2 (args[1].str), args[2].str, FUNC2 (args[2].str), 0, print_user_list_gw, ev);
  } else {
    if (ev) { ev->refcnt ++; }
    FUNC1 (TLS, ev, 0);
  }
}