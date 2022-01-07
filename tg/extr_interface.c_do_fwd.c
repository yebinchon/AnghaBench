
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tgl_message_id_t ;
struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int peer_id; int msg_id; } ;


 int TLS ;
 int assert (int) ;
 int print_msg_list_success_gw ;
 int tgl_do_forward_messages (int ,int ,int,void*,int ,int ,struct in_ev*) ;

void do_fwd (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num >= 2);
  if (ev) { ev->refcnt ++; }
  assert (arg_num <= 1000);



    static tgl_message_id_t *list[1000];
    int i;
    for (i = 0; i < arg_num - 1; i++) {
      list[i] = &args[i + 1].msg_id;
    }
    tgl_do_forward_messages (TLS, args[0].peer_id, arg_num - 1, (void *)list, 0, print_msg_list_success_gw, ev);

}
