
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_state {int dummy; } ;
struct tgl_secret_chat {int dummy; } ;


 int print_success_gw (struct tgl_state*,void*,int) ;
 int write_secret_chat_file () ;

void print_encr_chat_success_gw (struct tgl_state *TLS, void *extra, int success, struct tgl_secret_chat *E) {
  write_secret_chat_file ();
  print_success_gw (TLS, extra, success);
}
