
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cap; } ;
typedef int Capture ;
typedef TYPE_1__ CapState ;


 scalar_t__ isclosecap (int *) ;
 int isfullcap (int *) ;

__attribute__((used)) static void nextcap (CapState *cs) {
  Capture *cap = cs->cap;
  if (!isfullcap(cap)) {
    int n = 0;
    for (;;) {
      cap++;
      if (isclosecap(cap)) {
        if (n-- == 0) break;
      }
      else if (!isfullcap(cap)) n++;
    }
  }
  cs->cap = cap + 1;
}
