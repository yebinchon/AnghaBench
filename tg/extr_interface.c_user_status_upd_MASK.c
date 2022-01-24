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
struct tgl_user {int /*<<< orphan*/  status; int /*<<< orphan*/  id; } ;
struct tgl_state {int dummy; } ;
struct in_ev {int dummy; } ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_YELLOW ; 
 int /*<<< orphan*/  binlog_read ; 
 scalar_t__ disable_output ; 
 int /*<<< orphan*/  enable_json ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct tgl_user*) ; 
 int log_level ; 
 int /*<<< orphan*/  FUNC4 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC5 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC6 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC7 (struct in_ev*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct in_ev*,int /*<<< orphan*/ ) ; 
 struct in_ev* notify_ev ; 
 int /*<<< orphan*/  FUNC9 (struct in_ev*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct in_ev*) ; 

void FUNC11 (struct tgl_state *TLS, struct tgl_user *U) {
  if (disable_output && !notify_ev) { return; }
  if (!binlog_read) { return; }
  if (log_level < 3) { return; }
  struct in_ev *ev = notify_ev;
  FUNC6 (ev);
  if (!enable_json)
  {
    FUNC8 (ev, COLOR_YELLOW);
    FUNC7 (ev, "User ");
    FUNC9(ev, U->id, (void *) U);
    FUNC7 (ev, " ");
    FUNC10(&U->status, ev);
    FUNC7 (ev, "\n");
    FUNC4 (ev);
  } else {
    #ifdef USE_JSON
      json_t *res = json_pack_user_status(U);
      char *s = json_dumps (res, 0);
      mprintf (ev, "%s\n", s);
      json_decref (res);
      free (s);
    #endif
  }
  FUNC5 (ev);
}