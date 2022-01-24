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
struct tl_ds_reply_markup {int dummy; } ;
struct in_ev {int /*<<< orphan*/  refcnt; } ;
struct command {int dummy; } ;
struct arg {int /*<<< orphan*/  peer_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int disable_msg_preview ; 
 int do_html ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct in_ev*,int /*<<< orphan*/ ,char*) ; 
 struct tl_ds_reply_markup* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tl_ds_reply_markup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_end ; 
 int /*<<< orphan*/  in_ptr ; 
 int /*<<< orphan*/  packet_buffer ; 
 int /*<<< orphan*/  packet_ptr ; 
 int /*<<< orphan*/  print_msg_success_gw ; 
 int /*<<< orphan*/  reply_id ; 
 int /*<<< orphan*/  reply_markup ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct tl_ds_reply_markup*,int /*<<< orphan*/ ,struct in_ev*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC3 (arg_num == 3);
  if (ev) { ev->refcnt ++; }

  FUNC4 ();  
  if (FUNC9 (TLS, FUNC0(1), FUNC2 (reply_markup)) < 0) {
    FUNC5 (TLS, ev, ENOSYS, "can not parse reply markup");    
    return;
  }
  in_ptr = packet_buffer;
  in_end = packet_ptr;

  struct tl_ds_reply_markup *DS_RM = FUNC6 (FUNC2 (reply_markup));
  FUNC3 (DS_RM);

  FUNC8 (TLS, args[0].peer_id, FUNC0(2), FUNC1(reply_id) | disable_msg_preview | do_html, DS_RM, print_msg_success_gw, ev);

  FUNC7 (DS_RM, FUNC2 (reply_markup));
}