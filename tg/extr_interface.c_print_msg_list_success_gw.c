
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_state {int dummy; } ;
struct tgl_message {int dummy; } ;


 struct tgl_state* TLS ;
 int assert (int) ;
 int print_success_gw (struct tgl_state*,void*,int) ;

void print_msg_list_success_gw (struct tgl_state *TLSR, void *extra, int success, int num, struct tgl_message *ML[]) {
  assert (TLS == TLSR);
  print_success_gw (TLSR, extra, success);
}
