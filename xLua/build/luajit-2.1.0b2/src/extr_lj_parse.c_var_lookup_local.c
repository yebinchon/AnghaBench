
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int nactvar; int ls; } ;
typedef int GCstr ;
typedef TYPE_1__ FuncState ;
typedef int BCReg ;


 int * strref (int ) ;
 TYPE_3__ var_get (int ,TYPE_1__*,int) ;

__attribute__((used)) static BCReg var_lookup_local(FuncState *fs, GCstr *n)
{
  int i;
  for (i = fs->nactvar-1; i >= 0; i--) {
    if (n == strref(var_get(fs->ls, fs, i).name))
      return (BCReg)i;
  }
  return (BCReg)-1;
}
