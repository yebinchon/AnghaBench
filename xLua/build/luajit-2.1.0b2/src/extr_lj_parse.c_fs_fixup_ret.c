
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int pc; int lasttarget; int flags; TYPE_2__* bcbase; int ls; TYPE_1__* bl; } ;
struct TYPE_10__ {int ins; int line; } ;
struct TYPE_9__ {int flags; } ;
typedef TYPE_3__ FuncState ;
typedef int BCPos ;
typedef int BCIns ;


 int BCBIAS_J ;
 int BCINS_AD (int,int ,int) ;
 int BCMAX_D ;







 int FSCOPE_NOCLOSE ;
 int FSCOPE_UPVAL ;
 int LJ_ERR_XFIXUP ;
 int PROTO_FIXUP_RETURN ;
 int bc_op (int ) ;
 int bcemit_AD (TYPE_3__*,int,int ,int) ;
 int bcemit_AJ (TYPE_3__*,int,int ,int ) ;
 int bcemit_INS (TYPE_3__*,int ) ;
 int bcopisret (int) ;
 int err_syntax (int ,int ) ;
 int fscope_end (TYPE_3__*) ;
 int lua_assert (int ) ;

__attribute__((used)) static void fs_fixup_ret(FuncState *fs)
{
  BCPos lastpc = fs->pc;
  if (lastpc <= fs->lasttarget || !bcopisret(bc_op(fs->bcbase[lastpc-1].ins))) {
    if ((fs->bl->flags & FSCOPE_UPVAL))
      bcemit_AJ(fs, 128, 0, 0);
    bcemit_AD(fs, 131, 0, 1);
  }
  fs->bl->flags |= FSCOPE_NOCLOSE;
  fscope_end(fs);
  lua_assert(fs->bl == ((void*)0));

  if (fs->flags & PROTO_FIXUP_RETURN) {
    BCPos pc;
    for (pc = 1; pc < lastpc; pc++) {
      BCIns ins = fs->bcbase[pc].ins;
      BCPos offset;
      switch (bc_op(ins)) {
      case 134: case 133:
      case 129: case 132: case 131: case 130:
 offset = bcemit_INS(fs, ins);
 fs->bcbase[offset].line = fs->bcbase[pc].line;
 offset = offset-(pc+1)+BCBIAS_J;
 if (offset > BCMAX_D)
   err_syntax(fs->ls, LJ_ERR_XFIXUP);

 fs->bcbase[pc].ins = BCINS_AD(128, 0, offset);
 break;
      case 128:
 return;
      default:
 break;
      }
    }
  }
}
