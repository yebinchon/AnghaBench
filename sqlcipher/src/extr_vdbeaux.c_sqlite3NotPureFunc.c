
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t iOp; TYPE_2__* pVdbe; } ;
typedef TYPE_3__ sqlite3_context ;
struct TYPE_7__ {TYPE_1__* aOp; } ;
struct TYPE_6__ {scalar_t__ opcode; } ;


 scalar_t__ OP_PureFunc ;
 int sqlite3_result_error (TYPE_3__*,char*,int) ;

int sqlite3NotPureFunc(sqlite3_context *pCtx){



  if( pCtx->pVdbe->aOp[pCtx->iOp].opcode==OP_PureFunc ){
    sqlite3_result_error(pCtx,
       "non-deterministic function in index expression or CHECK constraint",
       -1);
    return 0;
  }
  return 1;
}
