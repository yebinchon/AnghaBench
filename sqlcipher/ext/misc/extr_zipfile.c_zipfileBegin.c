
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef scalar_t__ i64 ;
struct TYPE_5__ {int zErrMsg; } ;
struct TYPE_6__ {scalar_t__ pWriteFd; scalar_t__ szOrig; scalar_t__ szCurrent; int zFile; TYPE_1__ base; } ;
typedef TYPE_2__ ZipfileTab ;


 int SEEK_END ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ fopen (int ,char*) ;
 int fseek (scalar_t__,int ,int ) ;
 scalar_t__ ftell (scalar_t__) ;
 int sqlite3_mprintf (char*,int ) ;
 int zipfileCleanupTransaction (TYPE_2__*) ;
 int zipfileLoadDirectory (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int zipfileBegin(sqlite3_vtab *pVtab){
  ZipfileTab *pTab = (ZipfileTab*)pVtab;
  int rc = SQLITE_OK;

  assert( pTab->pWriteFd==0 );





  pTab->pWriteFd = fopen(pTab->zFile, "ab+");
  if( pTab->pWriteFd==0 ){
    pTab->base.zErrMsg = sqlite3_mprintf(
        "zipfile: failed to open file %s for writing", pTab->zFile
        );
    rc = SQLITE_ERROR;
  }else{
    fseek(pTab->pWriteFd, 0, SEEK_END);
    pTab->szCurrent = pTab->szOrig = (i64)ftell(pTab->pWriteFd);
    rc = zipfileLoadDirectory(pTab, 0, 0);
  }

  if( rc!=SQLITE_OK ){
    zipfileCleanupTransaction(pTab);
  }

  return rc;
}
