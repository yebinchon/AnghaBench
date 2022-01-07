
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FuncState ;


 int OP_LOADBOOL ;
 int luaK_codeABC (int *,int ,int,int,int) ;
 int luaK_getlabel (int *) ;

__attribute__((used)) static int code_label (FuncState *fs, int A, int b, int jump) {
  luaK_getlabel(fs);
  return luaK_codeABC(fs, OP_LOADBOOL, A, b, jump);
}
