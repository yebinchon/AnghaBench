
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_state {int dummy; } ;


 int write_auth_file () ;

void on_login (struct tgl_state *TLS) {
  write_auth_file ();
}
