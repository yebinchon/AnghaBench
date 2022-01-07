
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_6__ {int zName; int db; } ;
typedef TYPE_1__ fulltext_vtab ;
struct TYPE_7__ {int iCursorType; int pStmt; int result; } ;
typedef TYPE_2__ fulltext_cursor ;
typedef int DocList ;




 int SQLITE_OK ;
 int assert (int) ;
 TYPE_1__* cursor_vtab (TYPE_2__*) ;
 int fulltextNext (int *) ;
 int fulltext_query (TYPE_1__*,char const*,int **) ;
 int readerInit (int *,int *) ;
 int sql_prepare (int ,int ,int *,char const*) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static int fulltextFilter(sqlite3_vtab_cursor *pCursor,
                          int idxNum, const char *idxStr,
                          int argc, sqlite3_value **argv){
  fulltext_cursor *c = (fulltext_cursor *) pCursor;
  fulltext_vtab *v = cursor_vtab(c);
  int rc;
  const char *zStatement;

  c->iCursorType = idxNum;
  switch( idxNum ){
    case 128:
      zStatement = "select rowid, content from %_content";
      break;

    case 129:
    {
      const char *zQuery = (const char *)sqlite3_value_text(argv[0]);
      DocList *pResult;
      assert( argc==1 );
      rc = fulltext_query(v, zQuery, &pResult);
      if( rc!=SQLITE_OK ) return rc;
      readerInit(&c->result, pResult);
      zStatement = "select rowid, content from %_content where rowid = ?";
      break;
    }

    default:
      assert( 0 );
  }

  rc = sql_prepare(v->db, v->zName, &c->pStmt, zStatement);
  if( rc!=SQLITE_OK ) return rc;

  return fulltextNext(pCursor);
}
