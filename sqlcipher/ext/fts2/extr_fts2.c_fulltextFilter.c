
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_9__ {int nColumn; int zName; int zDb; int db; } ;
typedef TYPE_1__ fulltext_vtab ;
struct TYPE_11__ {int nData; int pData; } ;
struct TYPE_10__ {int iCursorType; TYPE_4__ result; int reader; int q; int * pStmt; } ;
typedef TYPE_2__ fulltext_cursor ;


 int DL_DOCIDS ;
 int QUERY_FULLTEXT ;


 int SQLITE_OK ;
 int TRACE (char*) ;
 int assert (int) ;
 TYPE_1__* cursor_vtab (TYPE_2__*) ;
 int dataBufferInit (TYPE_4__*,int ) ;
 int dataBufferReset (TYPE_4__*) ;
 int dlrDestroy (int *) ;
 int dlrInit (int *,int ,int ,int ) ;
 int fulltextNext (int *) ;
 int fulltextQuery (TYPE_1__*,int ,char const*,int,TYPE_4__*,int *) ;
 int queryClear (int *) ;
 int sql_prepare (int ,int ,int ,int **,char*) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char*) ;
 int sqlite3_reset (int *) ;
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

  TRACE(("FTS2 Filter %p\n",pCursor));






  if( c->pStmt && c->iCursorType!=idxNum ){
    sqlite3_finalize(c->pStmt);
    c->pStmt = ((void*)0);
  }
  if( !c->pStmt ){
    char *zSql = sqlite3_mprintf("select rowid, * from %%_content %s",
                                 idxNum==129 ? "" : "where rowid=?");
    rc = sql_prepare(v->db, v->zDb, v->zName, &c->pStmt, zSql);
    sqlite3_free(zSql);
    if( rc!=SQLITE_OK ) return rc;
    c->iCursorType = idxNum;
  }else{
    sqlite3_reset(c->pStmt);
    assert( c->iCursorType==idxNum );
  }

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
      assert( idxNum<=QUERY_FULLTEXT+v->nColumn);
      assert( argc==1 );
      queryClear(&c->q);
      if( c->result.nData!=0 ){

        dlrDestroy(&c->reader);
        dataBufferReset(&c->result);
      }else{
        dataBufferInit(&c->result, 0);
      }
      rc = fulltextQuery(v, idxNum-QUERY_FULLTEXT, zQuery, -1, &c->result, &c->q);
      if( rc!=SQLITE_OK ) return rc;
      if( c->result.nData!=0 ){
        dlrInit(&c->reader, DL_DOCIDS, c->result.pData, c->result.nData);
      }
      break;
    }
  }

  return fulltextNext(pCursor);
}
