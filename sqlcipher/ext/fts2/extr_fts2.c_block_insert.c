
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ fulltext_vtab ;


 int BLOCK_INSERT_STMT ;
 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int SQLITE_STATIC ;
 int sql_get_statement (TYPE_1__*,int ,int **) ;
 int sqlite3_bind_blob (int *,int,char const*,int,int ) ;
 int sqlite3_last_insert_rowid (int ) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int block_insert(fulltext_vtab *v, const char *pData, int nData,
                        sqlite_int64 *piBlockid){
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, BLOCK_INSERT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_blob(s, 1, pData, nData, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_step(s);
  if( rc==SQLITE_ROW ) return SQLITE_ERROR;
  if( rc!=SQLITE_DONE ) return rc;

  *piBlockid = sqlite3_last_insert_rowid(v->db);
  return SQLITE_OK;
}
