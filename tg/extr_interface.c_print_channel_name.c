
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int title; } ;
struct TYPE_5__ {TYPE_1__ channel; } ;
typedef TYPE_2__ tgl_peer_t ;
typedef int tgl_peer_id_t ;
struct in_ev {int dummy; } ;


 int COLOR_CYAN ;
 scalar_t__ TGL_PEER_CHANNEL ;
 int assert (int) ;
 int mpop_color (struct in_ev*) ;
 int mprintf (struct in_ev*,char*,int ) ;
 int mpush_color (struct in_ev*,int ) ;
 scalar_t__ permanent_peer_id_mode ;
 int print_peer_permanent_name (struct in_ev*,int ) ;
 int tgl_get_peer_id (int ) ;
 scalar_t__ tgl_get_peer_type (int ) ;
 scalar_t__ use_ids ;

void print_channel_name (struct in_ev *ev, tgl_peer_id_t id, tgl_peer_t *C) {
  assert (tgl_get_peer_type (id) == TGL_PEER_CHANNEL);
  mpush_color (ev, COLOR_CYAN);
  if (permanent_peer_id_mode) {
    print_peer_permanent_name (ev, id);
    mpop_color (ev);
    return;
  }
  if (!C || use_ids) {
    mprintf (ev, "channel#%d", tgl_get_peer_id (id));
  } else {
    mprintf (ev, "%s", C->channel.title);
  }
  mpop_color (ev);
}
