
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ iCursorType; int eof; int pStmt; int result; int snippet; } ;
typedef TYPE_1__ fulltext_cursor ;


 scalar_t__ QUERY_FULLTEXT ;

 int SQLITE_ERROR ;
 int SQLITE_OK ;

 int TRACE (char*) ;
 scalar_t__ nextDocid (int *) ;
 int snippetClear (int *) ;
 int sqlite3_bind_int64 (int ,int,scalar_t__) ;
 int sqlite3_reset (int ) ;
 int sqlite3_step (int ) ;

__attribute__((used)) static int fulltextNext(sqlite3_vtab_cursor *pCursor){
  fulltext_cursor *c = (fulltext_cursor *) pCursor;
  sqlite_int64 iDocid;
  int rc;

  TRACE(("FTS1 Next %p\n", pCursor));
  snippetClear(&c->snippet);
  if( c->iCursorType < QUERY_FULLTEXT ){

    rc = sqlite3_step(c->pStmt);
    switch( rc ){
      case 128:
        c->eof = 0;
        return SQLITE_OK;
      case 129:
        c->eof = 1;
        return SQLITE_OK;
      default:
        c->eof = 1;
        return rc;
    }
  } else {
    rc = sqlite3_reset(c->pStmt);
    if( rc!=SQLITE_OK ) return rc;

    iDocid = nextDocid(&c->result);
    if( iDocid==0 ){
      c->eof = 1;
      return SQLITE_OK;
    }
    rc = sqlite3_bind_int64(c->pStmt, 1, iDocid);
    if( rc!=SQLITE_OK ) return rc;

    rc = sqlite3_step(c->pStmt);
    if( rc==128 ){
      c->eof = 0;
      return SQLITE_OK;
    }

    return rc==129 ? SQLITE_ERROR : rc;
  }
}
