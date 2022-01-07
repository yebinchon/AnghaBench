
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int last_name; int first_name; } ;
struct TYPE_5__ {int flags; TYPE_1__ user; } ;
typedef TYPE_2__ tgl_peer_t ;
typedef int tgl_peer_id_t ;
struct in_ev {int dummy; } ;


 int COLOR_RED ;
 int COLOR_REDB ;
 int TGLUF_CONTACT ;
 int TGLUF_CREATED ;
 int TGLUF_DELETED ;
 int TGLUF_SELF ;
 scalar_t__ TGL_PEER_USER ;
 int assert (int) ;
 int mpop_color (struct in_ev*) ;
 int mprintf (struct in_ev*,char*,scalar_t__,...) ;
 int mpush_color (struct in_ev*,int ) ;
 scalar_t__ permanent_peer_id_mode ;
 int print_peer_permanent_name (struct in_ev*,int ) ;
 int strlen (int ) ;
 scalar_t__ tgl_get_peer_id (int ) ;
 scalar_t__ tgl_get_peer_type (int ) ;
 scalar_t__* unknown_user_list ;
 int unknown_user_list_pos ;
 scalar_t__ use_ids ;

void print_user_name (struct in_ev *ev, tgl_peer_id_t id, tgl_peer_t *U) {
  assert (tgl_get_peer_type (id) == TGL_PEER_USER);
  mpush_color (ev, COLOR_RED);
  if (permanent_peer_id_mode) {
    print_peer_permanent_name (ev, id);
    mpop_color (ev);
    return;
  }
  if (!U) {
    mprintf (ev, "user#%d", tgl_get_peer_id (id));
    int i;
    int ok = 1;
    for (i = 0; i < unknown_user_list_pos; i++) {
      if (unknown_user_list[i] == tgl_get_peer_id (id)) {
        ok = 0;
        break;
      }
    }
    if (ok) {
      assert (unknown_user_list_pos < 1000);
      unknown_user_list[unknown_user_list_pos ++] = tgl_get_peer_id (id);
    }
  } else {
    if (U->flags & (TGLUF_SELF | TGLUF_CONTACT)) {
      mpush_color (ev, COLOR_REDB);
    }
    if ((U->flags & TGLUF_DELETED)) {
      mprintf (ev, "deleted user#%d", tgl_get_peer_id (id));
    } else if (!(U->flags & TGLUF_CREATED)) {
      mprintf (ev, "user#%d", tgl_get_peer_id (id));
    } else if (use_ids) {
      mprintf (ev, "user#%d", tgl_get_peer_id (id));
    } else if (!U->user.first_name || !strlen (U->user.first_name)) {
      mprintf (ev, "%s", U->user.last_name);
    } else if (!U->user.last_name || !strlen (U->user.last_name)) {
      mprintf (ev, "%s", U->user.first_name);
    } else {
      mprintf (ev, "%s %s", U->user.first_name, U->user.last_name);
    }
    if (U->flags & (TGLUF_SELF | TGLUF_CONTACT)) {
      mpop_color (ev);
    }
  }
  mpop_color (ev);
}
