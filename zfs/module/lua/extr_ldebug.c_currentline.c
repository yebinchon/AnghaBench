
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p; } ;
typedef int CallInfo ;


 TYPE_1__* ci_func (int *) ;
 int currentpc (int *) ;
 int getfuncline (int ,int ) ;

__attribute__((used)) static int currentline (CallInfo *ci) {
  return getfuncline(ci_func(ci)->p, currentpc(ci));
}
