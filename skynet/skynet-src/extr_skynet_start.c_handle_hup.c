
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG ;
 int SIGHUP ;

__attribute__((used)) static void
handle_hup(int signal) {
 if (signal == SIGHUP) {
  SIG = 1;
 }
}
