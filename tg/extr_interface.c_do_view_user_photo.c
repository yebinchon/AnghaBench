
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int photo_big; } ;
struct TYPE_5__ {TYPE_1__ user; } ;
typedef TYPE_2__ tgl_peer_t ;
struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int peer_id; } ;


 int TLS ;
 int assert (int) ;
 int open_filename_gw (int ,struct in_ev*,int ,int *) ;
 int print_filename_gw ;
 int tgl_do_load_file_location (int ,int *,int ,struct in_ev*) ;
 TYPE_2__* tgl_peer_get (int ,int ) ;

void do_view_user_photo (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 1);
  if (ev) { ev->refcnt ++; }

  tgl_peer_t *P = tgl_peer_get (TLS, args[0].peer_id);
  if (P) {
    tgl_do_load_file_location (TLS, &P->user.photo_big, print_filename_gw, ev);
  } else {
    open_filename_gw (TLS, ev, 0, ((void*)0));
  }
}
