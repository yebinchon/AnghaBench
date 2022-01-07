
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int varname; } ;
struct TYPE_5__ {int nactvar; } ;
typedef int TString ;
typedef TYPE_1__ FuncState ;


 int cast_int (int ) ;
 scalar_t__ eqstr (int *,int ) ;
 TYPE_3__* getlocvar (TYPE_1__*,int) ;

__attribute__((used)) static int searchvar (FuncState *fs, TString *n) {
  int i;
  for (i = cast_int(fs->nactvar) - 1; i >= 0; i--) {
    if (eqstr(n, getlocvar(fs, i)->varname))
      return i;
  }
  return -1;
}
