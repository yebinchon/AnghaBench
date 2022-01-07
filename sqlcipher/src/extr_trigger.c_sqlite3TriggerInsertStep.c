
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {scalar_t__ mallocFailed; } ;
typedef TYPE_1__ sqlite3 ;
typedef int Upsert ;
struct TYPE_13__ {int orconf; int * pUpsert; int * pIdList; int * pSelect; } ;
typedef TYPE_2__ TriggerStep ;
typedef int Token ;
struct TYPE_14__ {TYPE_1__* db; } ;
typedef int Select ;
typedef TYPE_3__ Parse ;
typedef int IdList ;


 int EXPRDUP_REDUCE ;
 scalar_t__ IN_RENAME_OBJECT ;
 int TK_INSERT ;
 int assert (int) ;
 int sqlite3IdListDelete (TYPE_1__*,int *) ;
 int sqlite3SelectDelete (TYPE_1__*,int *) ;
 int * sqlite3SelectDup (TYPE_1__*,int *,int ) ;
 int sqlite3UpsertDelete (TYPE_1__*,int *) ;
 int testcase (int *) ;
 TYPE_2__* triggerStepAllocate (TYPE_3__*,int ,int *,char const*,char const*) ;

TriggerStep *sqlite3TriggerInsertStep(
  Parse *pParse,
  Token *pTableName,
  IdList *pColumn,
  Select *pSelect,
  u8 orconf,
  Upsert *pUpsert,
  const char *zStart,
  const char *zEnd
){
  sqlite3 *db = pParse->db;
  TriggerStep *pTriggerStep;

  assert(pSelect != 0 || db->mallocFailed);

  pTriggerStep = triggerStepAllocate(pParse, TK_INSERT, pTableName,zStart,zEnd);
  if( pTriggerStep ){
    if( IN_RENAME_OBJECT ){
      pTriggerStep->pSelect = pSelect;
      pSelect = 0;
    }else{
      pTriggerStep->pSelect = sqlite3SelectDup(db, pSelect, EXPRDUP_REDUCE);
    }
    pTriggerStep->pIdList = pColumn;
    pTriggerStep->pUpsert = pUpsert;
    pTriggerStep->orconf = orconf;
  }else{
    testcase( pColumn );
    sqlite3IdListDelete(db, pColumn);
    testcase( pUpsert );
    sqlite3UpsertDelete(db, pUpsert);
  }
  sqlite3SelectDelete(db, pSelect);

  return pTriggerStep;
}
