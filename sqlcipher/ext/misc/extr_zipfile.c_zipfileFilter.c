
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_11__ {scalar_t__ pVtab; } ;
typedef TYPE_1__ sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_12__ {char* zFile; scalar_t__ pFirstEntry; scalar_t__ pLastEntry; scalar_t__ pWriteFd; } ;
typedef TYPE_2__ ZipfileTab ;
struct TYPE_14__ {scalar_t__ nEntry; int iOffset; } ;
struct TYPE_13__ {scalar_t__ pFreeEntry; scalar_t__ pFile; int bEof; int bNoop; scalar_t__ pCurrent; TYPE_6__ eocd; int iNextOff; } ;
typedef TYPE_3__ ZipfileCsr ;


 scalar_t__ SQLITE_BLOB ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ fopen (char const*,char*) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;
 int zipfileCursorErr (TYPE_3__*,char*,...) ;
 int zipfileLoadDirectory (TYPE_2__*,int const*,int) ;
 int zipfileNext (TYPE_1__*) ;
 int zipfileReadEOCD (TYPE_2__*,int ,int ,scalar_t__,TYPE_6__*) ;
 int zipfileResetCursor (TYPE_3__*) ;

__attribute__((used)) static int zipfileFilter(
  sqlite3_vtab_cursor *cur,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  ZipfileTab *pTab = (ZipfileTab*)cur->pVtab;
  ZipfileCsr *pCsr = (ZipfileCsr*)cur;
  const char *zFile = 0;
  int rc = SQLITE_OK;
  int bInMemory = 0;

  zipfileResetCursor(pCsr);

  if( pTab->zFile ){
    zFile = pTab->zFile;
  }else if( idxNum==0 ){
    zipfileCursorErr(pCsr, "zipfile() function requires an argument");
    return SQLITE_ERROR;
  }else if( sqlite3_value_type(argv[0])==SQLITE_BLOB ){
    const u8 *aBlob = (const u8*)sqlite3_value_blob(argv[0]);
    int nBlob = sqlite3_value_bytes(argv[0]);
    assert( pTab->pFirstEntry==0 );
    rc = zipfileLoadDirectory(pTab, aBlob, nBlob);
    pCsr->pFreeEntry = pTab->pFirstEntry;
    pTab->pFirstEntry = pTab->pLastEntry = 0;
    if( rc!=SQLITE_OK ) return rc;
    bInMemory = 1;
  }else{
    zFile = (const char*)sqlite3_value_text(argv[0]);
  }

  if( 0==pTab->pWriteFd && 0==bInMemory ){
    pCsr->pFile = fopen(zFile, "rb");
    if( pCsr->pFile==0 ){
      zipfileCursorErr(pCsr, "cannot open file: %s", zFile);
      rc = SQLITE_ERROR;
    }else{
      rc = zipfileReadEOCD(pTab, 0, 0, pCsr->pFile, &pCsr->eocd);
      if( rc==SQLITE_OK ){
        if( pCsr->eocd.nEntry==0 ){
          pCsr->bEof = 1;
        }else{
          pCsr->iNextOff = pCsr->eocd.iOffset;
          rc = zipfileNext(cur);
        }
      }
    }
  }else{
    pCsr->bNoop = 1;
    pCsr->pCurrent = pCsr->pFreeEntry ? pCsr->pFreeEntry : pTab->pFirstEntry;
    rc = zipfileNext(cur);
  }

  return rc;
}
