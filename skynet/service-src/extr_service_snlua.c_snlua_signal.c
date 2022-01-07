
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snlua {scalar_t__ mem; int ctx; int L; } ;


 int skynet_error (int ,char*,float) ;
 int skynet_sig_L ;

void
snlua_signal(struct snlua *l, int signal) {
 skynet_error(l->ctx, "recv a signal %d", signal);
 if (signal == 0) {




 } else if (signal == 1) {
  skynet_error(l->ctx, "Current Memory %.3fK", (float)l->mem / 1024);
 }
}
