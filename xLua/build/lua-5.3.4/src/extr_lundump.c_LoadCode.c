
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int L; } ;
struct TYPE_7__ {int sizecode; int code; } ;
typedef TYPE_1__ Proto ;
typedef TYPE_2__ LoadState ;


 int Instruction ;
 int LoadInt (TYPE_2__*) ;
 int LoadVector (TYPE_2__*,int ,int) ;
 int luaM_newvector (int ,int,int ) ;

__attribute__((used)) static void LoadCode (LoadState *S, Proto *f) {
  int n = LoadInt(S);
  f->code = luaM_newvector(S->L, n, Instruction);
  f->sizecode = n;
  LoadVector(S, f->code, n);
}
