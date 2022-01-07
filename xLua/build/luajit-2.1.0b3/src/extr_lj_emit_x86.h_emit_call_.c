
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int32_t ;
struct TYPE_5__ {int * mcp; } ;
typedef int MCode ;
typedef TYPE_1__ ASMState ;


 int RID_RET ;
 int XI_CALL ;
 int XO_GROUP5 ;
 int XOg_CALL ;
 int emit_loadu64 (TYPE_1__*,int ,int ) ;
 int emit_rr (TYPE_1__*,int ,int ,int ) ;
 int jmprel (int *,int *) ;

__attribute__((used)) static void emit_call_(ASMState *as, MCode *target)
{
  MCode *p = as->mcp;
  *(int32_t *)(p-4) = jmprel(p, target);
  p[-5] = XI_CALL;
  as->mcp = p - 5;
}
