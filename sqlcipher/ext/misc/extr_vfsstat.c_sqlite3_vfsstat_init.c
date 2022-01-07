
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_api_routines ;
typedef int sqlite3 ;
typedef int VStatFile ;
struct TYPE_6__ {scalar_t__ szOsFile; } ;
struct TYPE_5__ {scalar_t__ szOsFile; } ;
struct TYPE_4__ {TYPE_2__ base; TYPE_3__* pVfs; } ;


 int SQLITE_EXTENSION_INIT2 (int const*) ;
 int SQLITE_OK ;
 int SQLITE_OK_LOAD_PERMANENTLY ;
 int sqlite3_auto_extension (int (*) (int *,char**,int const*)) ;
 TYPE_3__* sqlite3_vfs_find (int ) ;
 int sqlite3_vfs_register (TYPE_2__*,int) ;
 int vstatRegister (int *,char**,int const*) ;
 TYPE_1__ vstat_vfs ;

int sqlite3_vfsstat_init(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pApi
){
  int rc = SQLITE_OK;
  SQLITE_EXTENSION_INIT2(pApi);
  vstat_vfs.pVfs = sqlite3_vfs_find(0);
  vstat_vfs.base.szOsFile = sizeof(VStatFile) + vstat_vfs.pVfs->szOsFile;
  rc = sqlite3_vfs_register(&vstat_vfs.base, 1);
  if( rc==SQLITE_OK ){
    rc = vstatRegister(db, pzErrMsg, pApi);
    if( rc==SQLITE_OK ){
      rc = sqlite3_auto_extension(vstatRegister);
    }
  }
  if( rc==SQLITE_OK ) rc = SQLITE_OK_LOAD_PERMANENTLY;
  return rc;
}
