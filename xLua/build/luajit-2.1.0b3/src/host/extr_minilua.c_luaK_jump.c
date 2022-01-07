
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int jpc; } ;
typedef TYPE_1__ FuncState ;


 int OP_JMP ;
 int luaK_codeAsBx (TYPE_1__*,int ,int ,int) ;
 int luaK_concat (TYPE_1__*,int*,int) ;

__attribute__((used)) static int luaK_jump(FuncState*fs){
int jpc=fs->jpc;
int j;
fs->jpc=(-1);
j=luaK_codeAsBx(fs,OP_JMP,0,(-1));
luaK_concat(fs,&j,jpc);
return j;
}
