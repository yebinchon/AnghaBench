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
struct arg {scalar_t__ num; int /*<<< orphan*/  peer_id; } ;

/* Variables and functions */
 scalar_t__ NOT_FOUND ; 
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  print_success_gw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct in_ev*) ; 

void FUNC2 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC0 (arg_num == 3);
  if (ev) { ev->refcnt ++; }
  FUNC1 (TLS, args[0].peer_id, args[1].peer_id, args[2].num != NOT_FOUND ? args[2].num : 100, print_success_gw, ev);
}