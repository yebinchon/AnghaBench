
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ phone; } ;
struct TYPE_5__ {TYPE_1__ user; } ;
typedef TYPE_2__ tgl_peer_t ;
struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {scalar_t__ str; int peer_id; } ;


 int TLS ;
 int assert (int) ;
 int print_success_gw (int ,struct in_ev*,int ) ;
 int print_user_list_gw ;
 int strlen (scalar_t__) ;
 int tgl_do_add_contact (int ,scalar_t__,int ,scalar_t__,int ,scalar_t__,int ,int ,int ,struct in_ev*) ;
 TYPE_2__* tgl_peer_get (int ,int ) ;

void do_rename_contact (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 3);

  tgl_peer_t *P = tgl_peer_get (TLS, args[0].peer_id);
  if (P && P->user.phone) {
    if (ev) { ev->refcnt ++; }
    tgl_do_add_contact (TLS, P->user.phone, strlen (P->user.phone), args[1].str, strlen (args[1].str), args[2].str, strlen (args[2].str), 0, print_user_list_gw, ev);
  } else {
    if (ev) { ev->refcnt ++; }
    print_success_gw (TLS, ev, 0);
  }
}
