
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ breaklist; } ;
struct TYPE_6__ {int * fs; } ;
typedef TYPE_1__ LexState ;
typedef int FuncState ;
typedef TYPE_2__ BlockCnt ;


 scalar_t__ NO_JUMP ;
 int chunk (TYPE_1__*) ;
 int enterblock (int *,TYPE_2__*,int ) ;
 int leaveblock (int *) ;
 int lua_assert (int) ;

__attribute__((used)) static void block (LexState *ls) {

  FuncState *fs = ls->fs;
  BlockCnt bl;
  enterblock(fs, &bl, 0);
  chunk(ls);
  lua_assert(bl.breaklist == NO_JUMP);
  leaveblock(fs);
}
