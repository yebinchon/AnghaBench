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
struct in_ev {int dummy; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;

/* Variables and functions */
 int TGLMF_POST_AS_CHANNEL ; 
 int TGL_SEND_MSG_FLAG_DOCUMENT_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct command*,int,struct arg*,struct in_ev*,int) ; 

void FUNC1 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC0 (command, arg_num, args, ev, TGL_SEND_MSG_FLAG_DOCUMENT_VIDEO | TGLMF_POST_AS_CHANNEL);
}