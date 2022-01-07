
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t startpc; int slot; int name; } ;
typedef TYPE_2__ VarInfo ;
struct TYPE_12__ {TYPE_1__* bcbase; } ;
struct TYPE_11__ {TYPE_4__* fs; } ;
struct TYPE_9__ {int ins; } ;
typedef TYPE_3__ LexState ;
typedef TYPE_4__ FuncState ;
typedef size_t BCPos ;


 int jmp_patch (TYPE_4__*,size_t,size_t) ;
 int setbc_a (int *,int ) ;
 int setgcrefnull (int ) ;

__attribute__((used)) static void gola_patch(LexState *ls, VarInfo *vg, VarInfo *vl)
{
  FuncState *fs = ls->fs;
  BCPos pc = vg->startpc;
  setgcrefnull(vg->name);
  setbc_a(&fs->bcbase[pc].ins, vl->slot);
  jmp_patch(fs, pc, vl->startpc);
}
