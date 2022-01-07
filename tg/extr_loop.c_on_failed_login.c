
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_state {int error; int error_code; } ;


 int exit (int) ;
 int logprintf (char*,...) ;

void on_failed_login (struct tgl_state *TLS) {
  logprintf ("login failed\n");
  logprintf ("login error #%d: %s\n", TLS->error_code, TLS->error);
  logprintf ("you can relogin by deleting auth file or running telegram-cli with '-q' flag\n");
  exit (2);
}
