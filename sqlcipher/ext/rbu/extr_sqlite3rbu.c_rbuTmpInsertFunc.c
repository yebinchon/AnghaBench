
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ eType; int pTmpInsert; scalar_t__ nIndex; } ;
struct TYPE_5__ {TYPE_1__ objiter; int nPhaseOneStep; } ;
typedef TYPE_2__ sqlite3rbu ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 scalar_t__ RBU_PK_EXTERNAL ;
 scalar_t__ RBU_PK_NONE ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3_bind_value (int ,int,int *) ;
 int sqlite3_reset (int ) ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_step (int ) ;
 TYPE_2__* sqlite3_user_data (int *) ;
 scalar_t__ sqlite3_value_int (int *) ;

__attribute__((used)) static void rbuTmpInsertFunc(
  sqlite3_context *pCtx,
  int nVal,
  sqlite3_value **apVal
){
  sqlite3rbu *p = sqlite3_user_data(pCtx);
  int rc = SQLITE_OK;
  int i;

  assert( sqlite3_value_int(apVal[0])!=0
      || p->objiter.eType==RBU_PK_EXTERNAL
      || p->objiter.eType==RBU_PK_NONE
  );
  if( sqlite3_value_int(apVal[0])!=0 ){
    p->nPhaseOneStep += p->objiter.nIndex;
  }

  for(i=0; rc==SQLITE_OK && i<nVal; i++){
    rc = sqlite3_bind_value(p->objiter.pTmpInsert, i+1, apVal[i]);
  }
  if( rc==SQLITE_OK ){
    sqlite3_step(p->objiter.pTmpInsert);
    rc = sqlite3_reset(p->objiter.pTmpInsert);
  }

  if( rc!=SQLITE_OK ){
    sqlite3_result_error_code(pCtx, rc);
  }
}
