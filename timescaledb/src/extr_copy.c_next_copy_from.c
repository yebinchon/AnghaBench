
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cstate; } ;
struct TYPE_5__ {TYPE_1__ fromctx; } ;
typedef int Oid ;
typedef int ExprContext ;
typedef int Datum ;
typedef TYPE_2__ CopyChunkState ;


 int NextCopyFrom (int ,int *,int *,int*,int *) ;

__attribute__((used)) static bool
next_copy_from(CopyChunkState *ccstate, ExprContext *econtext, Datum *values, bool *nulls,
      Oid *tuple_oid)
{
 return NextCopyFrom(ccstate->fromctx.cstate, econtext, values, nulls, tuple_oid);
}
