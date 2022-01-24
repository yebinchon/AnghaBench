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
struct tgl_state {int dummy; } ;
struct tgl_message {int /*<<< orphan*/  to_id; } ;
struct in_ev {int dummy; } ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 scalar_t__ TGL_PEER_ENCR_CHAT ; 
 struct tgl_state* TLS ; 
 scalar_t__ alert_sound ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  binlog_read ; 
 scalar_t__ disable_output ; 
 int /*<<< orphan*/  enable_json ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct tgl_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct tgl_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC7 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC8 (struct in_ev*,char*,char*) ; 
 struct in_ev* notify_ev ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct in_ev*,struct tgl_message*) ; 
 int /*<<< orphan*/  FUNC11 (struct tgl_message*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

void FUNC14 (struct tgl_state *TLSR, struct tgl_message *M) {
  FUNC0 (TLSR == TLS);
  #ifdef USE_LUA
    lua_new_msg (M);
  #endif
  #ifdef USE_PYTHON
    py_new_msg (M);
  #endif
  if (!binlog_read) { return; }
  if (FUNC12 (M->to_id) == TGL_PEER_ENCR_CHAT) { 
    FUNC13 ();
  }
  if (alert_sound) {
    FUNC9 ();
  }
  if (disable_output && !notify_ev) { return; }
  struct in_ev *ev = notify_ev;
  FUNC7 (ev);
  if (!enable_json) {
    FUNC10 (ev, M);
  } else {
    #ifdef USE_JSON
      json_t *res = json_pack_message (M);
      char *s = json_dumps (res, 0);
      mprintf (ev, "%s\n", s);
      json_decref (res);
      free (s);
    #endif
  }
  FUNC6 (ev);
}