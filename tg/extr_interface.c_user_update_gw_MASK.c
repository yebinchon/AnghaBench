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
struct tgl_user {int /*<<< orphan*/  id; int /*<<< orphan*/  username; } ;
struct tgl_state {int dummy; } ;
struct in_ev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_YELLOW ; 
 unsigned int TGL_UPDATE_CREATED ; 
 unsigned int TGL_UPDATE_DELETED ; 
 struct tgl_state* TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  binlog_read ; 
 scalar_t__ disable_output ; 
 int /*<<< orphan*/  enable_json ; 
 int /*<<< orphan*/  FUNC1 (struct in_ev*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tgl_user*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC5 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC6 (struct in_ev*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct in_ev*,int /*<<< orphan*/ ) ; 
 struct in_ev* notify_ev ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct in_ev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct in_ev*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct tgl_user*,unsigned int) ; 

void FUNC12 (struct tgl_state *TLSR, struct tgl_user *U, unsigned flags) {
  FUNC0 (TLSR == TLS);
  #ifdef USE_LUA
    lua_user_update (U, flags);
  #endif
  #ifdef USE_PYTHON
    py_user_update (U, flags);
  #endif

  FUNC8 ((void *)U, U->username);
 
  if (disable_output && !notify_ev) { return; }
  if (!binlog_read) { return; }
  struct in_ev *ev = notify_ev;

  if (!(flags & TGL_UPDATE_CREATED)) {
    FUNC5 (ev);
    if (!enable_json) {
      FUNC7 (ev, COLOR_YELLOW);
      FUNC6 (ev, "User ");
      FUNC10 (ev, U->id, (void *)U);
      if (!(flags & TGL_UPDATE_DELETED)) {
        FUNC6 (ev, " updated");
        FUNC9 (ev, flags);
      } else {
        FUNC6 (ev, " deleted");
      }
      FUNC6 (ev, "\n");
      FUNC3 (ev);
    } else {
      FUNC1 (ev, (void *)U, flags);
    }
    FUNC4 (ev);
  }
}