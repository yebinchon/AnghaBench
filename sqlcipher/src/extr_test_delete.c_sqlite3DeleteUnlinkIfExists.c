
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* xDelete ) (TYPE_1__*,char const*,int ) ;} ;
typedef TYPE_1__ sqlite3_vfs ;


 scalar_t__ ENOENT ;
 int F_OK ;
 int SQLITE_ERROR ;
 int SQLITE_IOERR_DELETE_NOENT ;
 int SQLITE_OK ;
 int access (char const*,int ) ;
 int assert (int) ;
 scalar_t__ errno ;
 int stub1 (TYPE_1__*,char const*,int ) ;
 int unlink (char const*) ;

__attribute__((used)) static int sqlite3DeleteUnlinkIfExists(
  sqlite3_vfs *pVfs,
  const char *zFile,
  int *pbExists
){
  int rc = SQLITE_ERROR;
  assert( pVfs==0 );
  rc = access(zFile, F_OK);
  if( rc ){
    if( errno==ENOENT ){
      if( pbExists ) *pbExists = 0;
      rc = SQLITE_OK;
    }
  }else{
    if( pbExists ) *pbExists = 1;
    rc = unlink(zFile);
  }

  return rc;
}
