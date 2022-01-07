
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {char* zName; TYPE_1__* aCol; } ;
typedef TYPE_2__ Table ;
struct TYPE_14__ {int * aLimit; } ;
struct TYPE_13__ {int nKeyCol; size_t* aiColumn; int zName; scalar_t__ aColExpr; TYPE_2__* pTable; } ;
struct TYPE_12__ {TYPE_7__* db; } ;
struct TYPE_10__ {char* zName; } ;
typedef int StrAccum ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ Index ;


 scalar_t__ IsPrimaryKeyIndex (TYPE_4__*) ;
 int P4_DYNAMIC ;
 int P5_ConstraintUnique ;
 int SQLITE_CONSTRAINT_PRIMARYKEY ;
 int SQLITE_CONSTRAINT_UNIQUE ;
 size_t SQLITE_LIMIT_LENGTH ;
 int assert (int) ;
 int sqlite3HaltConstraint (TYPE_3__*,int ,int,char*,int ,int ) ;
 char* sqlite3StrAccumFinish (int *) ;
 int sqlite3StrAccumInit (int *,TYPE_7__*,int ,int ,int ) ;
 int sqlite3_str_append (int *,char*,int) ;
 int sqlite3_str_appendall (int *,char*) ;
 int sqlite3_str_appendf (int *,char*,int ) ;

void sqlite3UniqueConstraint(
  Parse *pParse,
  int onError,
  Index *pIdx
){
  char *zErr;
  int j;
  StrAccum errMsg;
  Table *pTab = pIdx->pTable;

  sqlite3StrAccumInit(&errMsg, pParse->db, 0, 0,
                      pParse->db->aLimit[SQLITE_LIMIT_LENGTH]);
  if( pIdx->aColExpr ){
    sqlite3_str_appendf(&errMsg, "index '%q'", pIdx->zName);
  }else{
    for(j=0; j<pIdx->nKeyCol; j++){
      char *zCol;
      assert( pIdx->aiColumn[j]>=0 );
      zCol = pTab->aCol[pIdx->aiColumn[j]].zName;
      if( j ) sqlite3_str_append(&errMsg, ", ", 2);
      sqlite3_str_appendall(&errMsg, pTab->zName);
      sqlite3_str_append(&errMsg, ".", 1);
      sqlite3_str_appendall(&errMsg, zCol);
    }
  }
  zErr = sqlite3StrAccumFinish(&errMsg);
  sqlite3HaltConstraint(pParse,
    IsPrimaryKeyIndex(pIdx) ? SQLITE_CONSTRAINT_PRIMARYKEY
                            : SQLITE_CONSTRAINT_UNIQUE,
    onError, zErr, P4_DYNAMIC, P5_ConstraintUnique);
}
