
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encr_chat; } ;
typedef TYPE_1__ tgl_peer_t ;
struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int peer_id; } ;


 int TLS ;
 int assert (int) ;
 int print_encr_chat_success_gw ;
 int print_success_gw (int ,struct in_ev*,int ) ;
 int tgl_do_accept_encr_chat_request (int ,int *,int ,struct in_ev*) ;
 TYPE_1__* tgl_peer_get (int ,int ) ;

void do_accept_secret_chat (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 1);
  if (ev) { ev->refcnt ++; }

  tgl_peer_t *P = tgl_peer_get (TLS, args[0].peer_id);
  if (P) {
    tgl_do_accept_encr_chat_request (TLS, &P->encr_chat, print_encr_chat_success_gw, ev);
  } else {
    print_success_gw (TLS, ev, 0);
  }
}
