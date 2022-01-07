
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ freereg; scalar_t__ framesize; int ls; } ;
typedef TYPE_1__ FuncState ;
typedef scalar_t__ BCReg ;


 int LJ_ERR_XSLOTS ;
 scalar_t__ LJ_MAX_SLOTS ;
 int err_syntax (int ,int ) ;

__attribute__((used)) static void bcreg_bump(FuncState *fs, BCReg n)
{
  BCReg sz = fs->freereg + n;
  if (sz > fs->framesize) {
    if (sz >= LJ_MAX_SLOTS)
      err_syntax(fs->ls, LJ_ERR_XSLOTS);
    fs->framesize = (uint8_t)sz;
  }
}
