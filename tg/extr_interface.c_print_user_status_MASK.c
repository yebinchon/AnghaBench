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
struct tgl_user_status {int online; int /*<<< orphan*/  when; } ;
struct in_ev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  enable_json ; 
 int /*<<< orphan*/  FUNC1 (struct in_ev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_ev*,int /*<<< orphan*/ ) ; 

void FUNC3 (struct tgl_user_status *S, struct in_ev *ev) {
  FUNC0(!enable_json); //calling functions print_user_info_gw() and user_status_upd() already check.
  if (S->online > 0) {
    FUNC1 (ev, "online (was online ");
    FUNC2 (ev, S->when);
    FUNC1 (ev, ")");
  } else {
    if (S->online == 0) {
      FUNC1 (ev, "offline");
    } else if (S->online == -1) {
      FUNC1 (ev, "offline (was online ");
      FUNC2 (ev, S->when);
      FUNC1 (ev, ")");
    } else if (S->online == -2) {
      FUNC1 (ev, "offline (was online recently)");
    } else if (S->online == -3) {
      FUNC1 (ev, "offline (was online last week)");
    } else if (S->online == -4) {
      FUNC1 (ev, "offline (was online last month)");
    }
  }
}