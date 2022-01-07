
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ tgl_peer_t ;
struct tgl_state {int dummy; } ;





 int assert (int ) ;
 int print_channel_gw (struct tgl_state*,void*,int,void*) ;
 int print_chat_gw (struct tgl_state*,void*,int,void*) ;
 int print_user_gw (struct tgl_state*,void*,int,void*) ;
 int tgl_get_peer_type (int ) ;

void print_peer_gw (struct tgl_state *TLSR, void *extra, int success, tgl_peer_t *U) {
  if (!success) {
    print_user_gw (TLSR, extra, success, (void *)U);
    return;
  }
  switch (tgl_get_peer_type (U->id)) {
  case 128:
    print_user_gw (TLSR, extra, success, (void *)U);
    break;
  case 129:
    print_chat_gw (TLSR, extra, success, (void *)U);
    break;
  case 130:
    print_channel_gw (TLSR, extra, success, (void *)U);
    break;
  default:
    assert (0);
  }
}
