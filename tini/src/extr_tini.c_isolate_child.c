
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOTTY ;
 scalar_t__ ENXIO ;
 int PRINT_DEBUG (char*) ;
 int PRINT_FATAL (char*,int ) ;
 int STDIN_FILENO ;
 scalar_t__ errno ;
 int getpgrp () ;
 scalar_t__ setpgid (int ,int ) ;
 int strerror (scalar_t__) ;
 scalar_t__ tcsetpgrp (int ,int ) ;

int isolate_child() {

 if (setpgid(0, 0) < 0) {
  PRINT_FATAL("setpgid failed: %s", strerror(errno));
  return 1;
 }
 if (tcsetpgrp(STDIN_FILENO, getpgrp())) {
  if (errno == ENOTTY) {
   PRINT_DEBUG("tcsetpgrp failed: no tty (ok to proceed)");
  } else if (errno == ENXIO) {

   PRINT_DEBUG("tcsetpgrp failed: no such device (ok to proceed)");
  } else {
   PRINT_FATAL("tcsetpgrp failed: %s", strerror(errno));
   return 1;
  }
 }

 return 0;
}
