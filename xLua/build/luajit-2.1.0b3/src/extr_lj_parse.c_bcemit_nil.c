
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pc; int lasttarget; TYPE_1__* bcbase; } ;
struct TYPE_5__ {int ins; } ;
typedef TYPE_2__ FuncState ;
typedef int BCReg ;
typedef int BCIns ;


 int BCINS_AD (int const,int,int) ;


 int LJ_TNIL ;
 int VKNIL ;
 int bc_a (int ) ;
 int bc_d (int ) ;
 int bc_op (int ) ;
 int bcemit_INS (TYPE_2__*,int ) ;
 int setbc_d (int *,int) ;

__attribute__((used)) static void bcemit_nil(FuncState *fs, BCReg from, BCReg n)
{
  if (fs->pc > fs->lasttarget) {
    BCIns *ip = &fs->bcbase[fs->pc-1].ins;
    BCReg pto, pfrom = bc_a(*ip);
    switch (bc_op(*ip)) {
    case 128:
      if (bc_d(*ip) != ~LJ_TNIL) break;
      if (from == pfrom) {
 if (n == 1) return;
      } else if (from == pfrom+1) {
 from = pfrom;
 n++;
      } else {
 break;
      }
      *ip = BCINS_AD(129, from, from+n-1);
      return;
    case 129:
      pto = bc_d(*ip);
      if (pfrom <= from && from <= pto+1) {
 if (from+n-1 > pto)
   setbc_d(ip, from+n-1);
 return;
      }
      break;
    default:
      break;
    }
  }

  bcemit_INS(fs, n == 1 ? BCINS_AD(128, from, VKNIL) :
     BCINS_AD(129, from, from+n-1));
}
