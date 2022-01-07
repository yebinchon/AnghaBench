
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; } ;
struct TYPE_4__ {TYPE_3__ encr_chat; } ;
typedef TYPE_1__ tgl_peer_t ;
struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int num; int peer_id; } ;


 int TLS ;
 int assert (int) ;
 int print_msg_success_gw ;
 int print_success_gw (int ,struct in_ev*,int ) ;
 scalar_t__ sc_ok ;
 int tgl_do_set_encr_chat_ttl (int ,TYPE_3__*,int ,int ,struct in_ev*) ;
 TYPE_1__* tgl_peer_get (int ,int ) ;

void do_set_ttl (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 2);
  if (ev) { ev->refcnt ++; }
  tgl_peer_t *P = tgl_peer_get (TLS, args[0].peer_id);
  if (P && P->encr_chat.state == sc_ok) {
    tgl_do_set_encr_chat_ttl (TLS, &P->encr_chat, args[1].num, print_msg_success_gw, ev);
  } else {
    print_success_gw (TLS, ev, 0);
  }
}
