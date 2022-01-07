
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pVtab; } ;
typedef TYPE_1__ sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
typedef int sqlite3 ;
struct TYPE_8__ {int interp; int * db; } ;
typedef TYPE_2__ echo_vtab ;
struct TYPE_9__ {scalar_t__ pStmt; } ;
typedef TYPE_3__ echo_cursor ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int appendToEchoModule (int ,char const*) ;
 int assert (int) ;
 int echoNext (TYPE_1__*) ;
 int hashString (char const*) ;
 scalar_t__ simulateVtabError (TYPE_2__*,char*) ;
 int sqlite3_bind_value (scalar_t__,int,int *) ;
 int sqlite3_finalize (scalar_t__) ;
 int sqlite3_prepare (int *,char const*,int,scalar_t__*,int ) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static int echoFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  int rc;
  int i;

  echo_cursor *pCur = (echo_cursor *)pVtabCursor;
  echo_vtab *pVtab = (echo_vtab *)pVtabCursor->pVtab;
  sqlite3 *db = pVtab->db;

  if( simulateVtabError(pVtab, "xFilter") ){
    return SQLITE_ERROR;
  }


  assert( idxNum==hashString(idxStr) );


  appendToEchoModule(pVtab->interp, "xFilter");
  appendToEchoModule(pVtab->interp, idxStr);
  for(i=0; i<argc; i++){
    appendToEchoModule(pVtab->interp, (const char*)sqlite3_value_text(argv[i]));
  }

  sqlite3_finalize(pCur->pStmt);
  pCur->pStmt = 0;




  rc = sqlite3_prepare(db, idxStr, -1, &pCur->pStmt, 0);
  assert( pCur->pStmt || rc!=SQLITE_OK );
  for(i=0; rc==SQLITE_OK && i<argc; i++){
    rc = sqlite3_bind_value(pCur->pStmt, i+1, argv[i]);
  }


  if( rc==SQLITE_OK ){
    rc = echoNext(pVtabCursor);
  }

  return rc;
}
