
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int print_name; } ;
typedef TYPE_1__ tgl_peer_t ;
typedef int tgl_peer_id_t ;
struct in_ev {int dummy; } ;


 int COLOR_MAGENTA ;
 scalar_t__ TGL_PEER_ENCR_CHAT ;
 int assert (int) ;
 int mpop_color (struct in_ev*) ;
 int mprintf (struct in_ev*,char*,int ) ;
 int mpush_color (struct in_ev*,int ) ;
 scalar_t__ permanent_peer_id_mode ;
 int print_peer_permanent_name (struct in_ev*,int ) ;
 int tgl_get_peer_id (int ) ;
 scalar_t__ tgl_get_peer_type (int ) ;
 scalar_t__ use_ids ;

void print_encr_chat_name (struct in_ev *ev, tgl_peer_id_t id, tgl_peer_t *C) {
  assert (tgl_get_peer_type (id) == TGL_PEER_ENCR_CHAT);
  mpush_color (ev, COLOR_MAGENTA);
  if (permanent_peer_id_mode) {
    print_peer_permanent_name (ev, id);
    mpop_color (ev);
    return;
  }
  if (!C || use_ids) {
    mprintf (ev, "encr_chat#%d", tgl_get_peer_id (id));
  } else {
    mprintf (ev, "%s", C->print_name);
  }
  mpop_color (ev);
}
