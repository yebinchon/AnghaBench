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
struct TYPE_4__ {int /*<<< orphan*/  last_name; int /*<<< orphan*/  first_name; } ;
struct TYPE_5__ {int flags; TYPE_1__ user; } ;
typedef  TYPE_2__ tgl_peer_t ;
typedef  int /*<<< orphan*/  tgl_peer_id_t ;
struct in_ev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_RED ; 
 int /*<<< orphan*/  COLOR_REDB ; 
 int TGLUF_CONTACT ; 
 int TGLUF_CREATED ; 
 int TGLUF_DELETED ; 
 int TGLUF_SELF ; 
 scalar_t__ TGL_PEER_USER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_ev*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (struct in_ev*,int /*<<< orphan*/ ) ; 
 scalar_t__ permanent_peer_id_mode ; 
 int /*<<< orphan*/  FUNC4 (struct in_ev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__* unknown_user_list ; 
 int unknown_user_list_pos ; 
 scalar_t__ use_ids ; 

void FUNC8 (struct in_ev *ev, tgl_peer_id_t id, tgl_peer_t *U) {
  FUNC0 (FUNC7 (id) == TGL_PEER_USER);
  FUNC3 (ev, COLOR_RED);
  if (permanent_peer_id_mode) {
    FUNC4 (ev, id);
    FUNC1 (ev);
    return;
  }
  if (!U) {
    FUNC2 (ev, "user#%d", FUNC6 (id));
    int i;
    int ok = 1;
    for (i = 0; i < unknown_user_list_pos; i++) {
      if (unknown_user_list[i] == FUNC6 (id)) {
        ok = 0;
        break;
      }
    }
    if (ok) {
      FUNC0 (unknown_user_list_pos < 1000);
      unknown_user_list[unknown_user_list_pos ++] = FUNC6 (id);
    }
  } else {
    if (U->flags & (TGLUF_SELF | TGLUF_CONTACT)) {
      FUNC3 (ev, COLOR_REDB);
    }
    if ((U->flags & TGLUF_DELETED)) {
      FUNC2 (ev, "deleted user#%d", FUNC6 (id));
    } else if (!(U->flags & TGLUF_CREATED)) {
      FUNC2 (ev, "user#%d", FUNC6 (id));
    } else if (use_ids) {
      FUNC2 (ev, "user#%d", FUNC6 (id));
    } else if (!U->user.first_name || !FUNC5 (U->user.first_name)) {
      FUNC2 (ev, "%s", U->user.last_name);
    } else if (!U->user.last_name || !FUNC5 (U->user.last_name)) {
      FUNC2 (ev, "%s", U->user.first_name);
    } else {
      FUNC2 (ev, "%s %s", U->user.first_name, U->user.last_name); 
    }
    if (U->flags & (TGLUF_SELF | TGLUF_CONTACT)) {
      FUNC1 (ev);
    }
  }
  FUNC1 (ev);
}