
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ token; } ;
struct TYPE_9__ {TYPE_1__ t; int * fs; } ;
typedef TYPE_2__ LexState ;
typedef int FuncState ;


 scalar_t__ TK_ELSE ;
 scalar_t__ TK_ELSEIF ;
 int TK_END ;
 int TK_IF ;
 int block (TYPE_2__*) ;
 int check_match (TYPE_2__*,int ,int ,int) ;
 int luaK_concat (int *,int*,int) ;
 int luaK_jump (int *) ;
 int luaK_patchtohere (int *,int) ;
 int luaX_next (TYPE_2__*) ;
 int test_then_block (TYPE_2__*) ;

__attribute__((used)) static void ifstat(LexState*ls,int line){
FuncState*fs=ls->fs;
int flist;
int escapelist=(-1);
flist=test_then_block(ls);
while(ls->t.token==TK_ELSEIF){
luaK_concat(fs,&escapelist,luaK_jump(fs));
luaK_patchtohere(fs,flist);
flist=test_then_block(ls);
}
if(ls->t.token==TK_ELSE){
luaK_concat(fs,&escapelist,luaK_jump(fs));
luaK_patchtohere(fs,flist);
luaX_next(ls);
block(ls);
}
else
luaK_concat(fs,&escapelist,flist);
luaK_patchtohere(fs,escapelist);
check_match(ls,TK_END,TK_IF,line);
}
