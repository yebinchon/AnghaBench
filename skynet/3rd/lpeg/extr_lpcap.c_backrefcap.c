
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * cap; } ;
typedef int Capture ;
typedef TYPE_1__ CapState ;


 int * findback (TYPE_1__*,int *) ;
 int pushluaval (TYPE_1__*) ;
 int pushnestedvalues (TYPE_1__*,int ) ;

__attribute__((used)) static int backrefcap (CapState *cs) {
  int n;
  Capture *curr = cs->cap;
  pushluaval(cs);
  cs->cap = findback(cs, curr);
  n = pushnestedvalues(cs, 0);
  cs->cap = curr + 1;
  return n;
}
