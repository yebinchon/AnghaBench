
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_api_routines ;
typedef int sqlite3 ;
struct TYPE_3__ {int szOsFile; int pAppData; } ;
typedef int MemFile ;


 int SQLITE_EXTENSION_INIT2 (int const*) ;
 int SQLITE_OK ;
 int SQLITE_OK_LOAD_PERMANENTLY ;
 TYPE_1__ mem_vfs ;
 int memvfsRegister (int *,char**,int const*) ;
 int sqlite3_auto_extension (void (*) ()) ;
 int sqlite3_vfs_find (int ) ;
 int sqlite3_vfs_register (TYPE_1__*,int) ;

int sqlite3_memvfs_init(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pApi
){
  int rc = SQLITE_OK;
  SQLITE_EXTENSION_INIT2(pApi);
  mem_vfs.pAppData = sqlite3_vfs_find(0);
  mem_vfs.szOsFile = sizeof(MemFile);
  rc = sqlite3_vfs_register(&mem_vfs, 1);
  if( rc==SQLITE_OK ) rc = SQLITE_OK_LOAD_PERMANENTLY;
  return rc;
}
