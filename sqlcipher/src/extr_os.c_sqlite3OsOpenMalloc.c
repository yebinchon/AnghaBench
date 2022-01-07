
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int szOsFile; } ;
typedef TYPE_1__ sqlite3_vfs ;
typedef int sqlite3_file ;


 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 scalar_t__ sqlite3MallocZero (int ) ;
 int sqlite3OsOpen (TYPE_1__*,char const*,int *,int,int*) ;
 int sqlite3_free (int *) ;

int sqlite3OsOpenMalloc(
  sqlite3_vfs *pVfs,
  const char *zFile,
  sqlite3_file **ppFile,
  int flags,
  int *pOutFlags
){
  int rc;
  sqlite3_file *pFile;
  pFile = (sqlite3_file *)sqlite3MallocZero(pVfs->szOsFile);
  if( pFile ){
    rc = sqlite3OsOpen(pVfs, zFile, pFile, flags, pOutFlags);
    if( rc!=SQLITE_OK ){
      sqlite3_free(pFile);
    }else{
      *ppFile = pFile;
    }
  }else{
    rc = SQLITE_NOMEM_BKPT;
  }
  return rc;
}
