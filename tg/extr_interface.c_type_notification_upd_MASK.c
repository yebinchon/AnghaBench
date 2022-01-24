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
struct tgl_user {int /*<<< orphan*/  id; } ;
struct tgl_state {int dummy; } ;
struct in_ev {int dummy; } ;
typedef  enum tgl_typing_status { ____Placeholder_tgl_typing_status } tgl_typing_status ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_YELLOW ; 
 struct tgl_state* TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ disable_output ; 
 scalar_t__ enable_json ; 
 int log_level ; 
 int /*<<< orphan*/  FUNC1 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_ev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct in_ev*,int /*<<< orphan*/ ) ; 
 struct in_ev* notify_ev ; 
 int /*<<< orphan*/  FUNC6 (struct in_ev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct in_ev*,int /*<<< orphan*/ ,void*) ; 

void FUNC8 (struct tgl_state *TLSR, struct tgl_user *U, enum tgl_typing_status status) {
  FUNC0 (TLSR == TLS);
  if (log_level < 2 || (disable_output && !notify_ev)) { return; }
  if (enable_json) { return; }
  struct in_ev *ev = notify_ev;
  FUNC3 (ev);
  FUNC5 (ev, COLOR_YELLOW);
  FUNC4 (ev, "User ");
  FUNC7 (ev, U->id, (void *)U);
  FUNC4 (ev, " is ");
  FUNC6 (ev, status);
  FUNC4 (ev, "\n");
  FUNC1 (ev);
  FUNC2 (ev);
}