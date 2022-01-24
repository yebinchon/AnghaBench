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
typedef  int /*<<< orphan*/  tgl_peer_id_t ;
struct in_ev {int /*<<< orphan*/  refcnt; } ;
struct command {int dummy; } ;
struct arg {int /*<<< orphan*/  peer_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  print_success_gw ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct in_ev*) ; 

void FUNC3 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC1 (arg_num >= 2 && arg_num <= 1000);
  static tgl_peer_id_t ids[1000];
  int i;
  for (i = 0; i < arg_num - 2; i++) {
    ids[i] = args[i + 2].peer_id;
  }

  if (ev) { ev->refcnt ++; }
  FUNC2 (TLS, arg_num - 2, ids, FUNC0 (0), FUNC0 (1), 1, print_success_gw, ev);  
}