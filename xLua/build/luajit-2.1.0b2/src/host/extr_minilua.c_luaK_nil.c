
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pc; int lasttarget; int nactvar; TYPE_1__* f; } ;
struct TYPE_5__ {int * code; } ;
typedef int Instruction ;
typedef TYPE_2__ FuncState ;


 int GETARG_A (int ) ;
 int GETARG_B (int ) ;
 scalar_t__ GET_OPCODE (int ) ;
 scalar_t__ OP_LOADNIL ;
 int SETARG_B (int ,int) ;
 int luaK_codeABC (TYPE_2__*,scalar_t__,int,int,int ) ;

__attribute__((used)) static void luaK_nil(FuncState*fs,int from,int n){
Instruction*previous;
if(fs->pc>fs->lasttarget){
if(fs->pc==0){
if(from>=fs->nactvar)
return;
}
else{
previous=&fs->f->code[fs->pc-1];
if(GET_OPCODE(*previous)==OP_LOADNIL){
int pfrom=GETARG_A(*previous);
int pto=GETARG_B(*previous);
if(pfrom<=from&&from<=pto+1){
if(from+n-1>pto)
SETARG_B(*previous,from+n-1);
return;
}
}
}
}
luaK_codeABC(fs,OP_LOADNIL,from,from+n-1,0);
}
