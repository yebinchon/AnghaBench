
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tgl_state {int dummy; } ;
struct tgl_message {int server_id; int from_id; int to_id; } ;
struct TYPE_3__ {int our_id; } ;


 TYPE_1__* TLS ;
 int print_msg_list_gw (struct tgl_state*,void*,int,int,struct tgl_message**) ;
 scalar_t__ tgl_cmp_peer_id (int ,int ) ;
 int tgl_do_messages_mark_read (TYPE_1__*,int ,int ,int ,int *,int *) ;

void print_msg_list_history_gw (struct tgl_state *TLSR, void *extra, int success, int num, struct tgl_message *ML[]) {
  print_msg_list_gw (TLSR, extra, success, num, ML);
  if (num > 0) {
    if (tgl_cmp_peer_id (ML[0]->to_id, TLS->our_id)) {
      tgl_do_messages_mark_read (TLS, ML[0]->to_id, ML[0]->server_id, 0, ((void*)0), ((void*)0));
    } else {
      tgl_do_messages_mark_read (TLS, ML[0]->from_id, ML[0]->server_id, 0, ((void*)0), ((void*)0));
    }
  }
}
