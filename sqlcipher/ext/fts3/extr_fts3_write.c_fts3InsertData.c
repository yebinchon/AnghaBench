
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
struct TYPE_4__ {int nColumn; int db; scalar_t__ zLanguageid; scalar_t__ zContentTbl; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_CONSTRAINT ;
 int SQLITE_ERROR ;
 scalar_t__ SQLITE_INTEGER ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_OK ;
 int SQL_CONTENT_INSERT ;
 int fts3SqlStmt (TYPE_1__*,int ,int **,int **) ;
 int sqlite3_bind_int (int *,int,int ) ;
 int sqlite3_bind_value (int *,int,int *) ;
 int sqlite3_last_insert_rowid (int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;
 int sqlite3_value_int (int *) ;
 int sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static int fts3InsertData(
  Fts3Table *p,
  sqlite3_value **apVal,
  sqlite3_int64 *piDocid
){
  int rc;
  sqlite3_stmt *pContentInsert;

  if( p->zContentTbl ){
    sqlite3_value *pRowid = apVal[p->nColumn+3];
    if( sqlite3_value_type(pRowid)==SQLITE_NULL ){
      pRowid = apVal[1];
    }
    if( sqlite3_value_type(pRowid)!=SQLITE_INTEGER ){
      return SQLITE_CONSTRAINT;
    }
    *piDocid = sqlite3_value_int64(pRowid);
    return SQLITE_OK;
  }
  rc = fts3SqlStmt(p, SQL_CONTENT_INSERT, &pContentInsert, &apVal[1]);
  if( rc==SQLITE_OK && p->zLanguageid ){
    rc = sqlite3_bind_int(
        pContentInsert, p->nColumn+2,
        sqlite3_value_int(apVal[p->nColumn+4])
    );
  }
  if( rc!=SQLITE_OK ) return rc;
  if( SQLITE_NULL!=sqlite3_value_type(apVal[3+p->nColumn]) ){
    if( SQLITE_NULL==sqlite3_value_type(apVal[0])
     && SQLITE_NULL!=sqlite3_value_type(apVal[1])
    ){

      return SQLITE_ERROR;
    }
    rc = sqlite3_bind_value(pContentInsert, 1, apVal[3+p->nColumn]);
    if( rc!=SQLITE_OK ) return rc;
  }




  sqlite3_step(pContentInsert);
  rc = sqlite3_reset(pContentInsert);

  *piDocid = sqlite3_last_insert_rowid(p->db);
  return rc;
}
