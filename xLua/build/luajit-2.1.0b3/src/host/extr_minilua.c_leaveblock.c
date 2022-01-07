
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int breaklist; int nactvar; scalar_t__ upval; struct TYPE_7__* previous; } ;
struct TYPE_6__ {int nactvar; int freereg; int ls; TYPE_2__* bl; } ;
typedef TYPE_1__ FuncState ;
typedef TYPE_2__ BlockCnt ;


 int OP_CLOSE ;
 int luaK_codeABC (TYPE_1__*,int ,int ,int ,int ) ;
 int luaK_patchtohere (TYPE_1__*,int ) ;
 int removevars (int ,int ) ;

__attribute__((used)) static void leaveblock(FuncState*fs){
BlockCnt*bl=fs->bl;
fs->bl=bl->previous;
removevars(fs->ls,bl->nactvar);
if(bl->upval)
luaK_codeABC(fs,OP_CLOSE,bl->nactvar,0,0);
fs->freereg=fs->nactvar;
luaK_patchtohere(fs,bl->breaklist);
}
