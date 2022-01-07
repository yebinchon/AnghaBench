
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_7__ {int nColumn; int zName; int zDb; int db; } ;
typedef TYPE_1__ fulltext_vtab ;
struct TYPE_9__ {int * pDoclist; } ;
struct TYPE_8__ {int iCursorType; TYPE_3__ result; int q; int pStmt; } ;
typedef TYPE_2__ fulltext_cursor ;
typedef int DocList ;


 int QUERY_FULLTEXT ;


 int SQLITE_OK ;
 int TRACE (char*) ;
 int assert (int) ;
 TYPE_1__* cursor_vtab (TYPE_2__*) ;
 int docListDelete (int *) ;
 int fulltextNext (int *) ;
 int fulltextQuery (TYPE_1__*,int ,char const*,int,int **,int *) ;
 int queryClear (int *) ;
 int readerInit (TYPE_3__*,int *) ;
 int sql_prepare (int ,int ,int ,int *,char*) ;
 int sqlite3_bind_int64 (int ,int,int ) ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char*) ;
 int sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static int fulltextFilter(
  sqlite3_vtab_cursor *pCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  fulltext_cursor *c = (fulltext_cursor *) pCursor;
  fulltext_vtab *v = cursor_vtab(c);
  int rc;
  char *zSql;

  TRACE(("FTS1 Filter %p\n",pCursor));

  zSql = sqlite3_mprintf("select rowid, * from %%_content %s",
                          idxNum==129 ? "" : "where rowid=?");
  sqlite3_finalize(c->pStmt);
  rc = sql_prepare(v->db, v->zDb, v->zName, &c->pStmt, zSql);
  sqlite3_free(zSql);
  if( rc!=SQLITE_OK ) return rc;

  c->iCursorType = idxNum;
  switch( idxNum ){
    case 129:
      break;

    case 128:
      rc = sqlite3_bind_int64(c->pStmt, 1, sqlite3_value_int64(argv[0]));
      if( rc!=SQLITE_OK ) return rc;
      break;

    default:
    {
      const char *zQuery = (const char *)sqlite3_value_text(argv[0]);
      DocList *pResult;
      assert( idxNum<=QUERY_FULLTEXT+v->nColumn);
      assert( argc==1 );
      queryClear(&c->q);
      rc = fulltextQuery(v, idxNum-QUERY_FULLTEXT, zQuery, -1, &pResult, &c->q);
      if( rc!=SQLITE_OK ) return rc;
      if( c->result.pDoclist!=((void*)0) ) docListDelete(c->result.pDoclist);
      readerInit(&c->result, pResult);
      break;
    }
  }

  return fulltextNext(pCursor);
}
