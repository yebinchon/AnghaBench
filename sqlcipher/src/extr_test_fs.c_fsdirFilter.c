
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_2__ {int zDir; scalar_t__ pDir; scalar_t__ iRowid; } ;
typedef TYPE_1__ FsdirCsr ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int closedir (scalar_t__) ;
 int fsdirNext (int *) ;
 int memcpy (int ,char const*,int) ;
 scalar_t__ opendir (int ) ;
 int sqlite3_free (int ) ;
 int sqlite3_malloc (int) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static int fsdirFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  FsdirCsr *pCsr = (FsdirCsr*)pVtabCursor;
  const char *zDir;
  int nDir;


  if( idxNum!=1 || argc!=1 ){
    return SQLITE_ERROR;
  }

  pCsr->iRowid = 0;
  sqlite3_free(pCsr->zDir);
  if( pCsr->pDir ){
    closedir(pCsr->pDir);
    pCsr->pDir = 0;
  }

  zDir = (const char*)sqlite3_value_text(argv[0]);
  nDir = sqlite3_value_bytes(argv[0]);
  pCsr->zDir = sqlite3_malloc(nDir+1);
  if( pCsr->zDir==0 ) return SQLITE_NOMEM;
  memcpy(pCsr->zDir, zDir, nDir+1);

  pCsr->pDir = opendir(pCsr->zDir);
  return fsdirNext(pVtabCursor);
}
