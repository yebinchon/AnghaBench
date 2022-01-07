
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tgl_peer_t ;
typedef int tgl_peer_id_t ;
struct in_ev {int dummy; } ;






 int assert (int ) ;
 int print_channel_name (struct in_ev*,int ,int *) ;
 int print_chat_name (struct in_ev*,int ,int *) ;
 int print_encr_chat_name (struct in_ev*,int ,int *) ;
 int print_user_name (struct in_ev*,int ,int *) ;
 int tgl_get_peer_type (int ) ;

void print_peer_name (struct in_ev *ev, tgl_peer_id_t id, tgl_peer_t *C) {
  switch (tgl_get_peer_type (id)) {
  case 128:
    print_user_name (ev, id, C);
    return;
  case 130:
    print_chat_name (ev, id, C);
    return;
  case 131:
    print_channel_name (ev, id, C);
    return;
  case 129:
    print_encr_chat_name (ev, id, C);
    return;
  default:
    assert (0);
  }
}
