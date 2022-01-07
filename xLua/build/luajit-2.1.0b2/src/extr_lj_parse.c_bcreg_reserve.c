
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int freereg; } ;
typedef TYPE_1__ FuncState ;
typedef scalar_t__ BCReg ;


 int bcreg_bump (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void bcreg_reserve(FuncState *fs, BCReg n)
{
  bcreg_bump(fs, n);
  fs->freereg += n;
}
