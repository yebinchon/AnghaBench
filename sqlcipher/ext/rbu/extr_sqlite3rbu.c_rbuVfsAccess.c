
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* xAccess ) (TYPE_2__*,char const*,int,int*) ;} ;
typedef TYPE_2__ sqlite3_vfs ;
typedef scalar_t__ sqlite3_int64 ;
struct TYPE_11__ {TYPE_2__* pRealVfs; } ;
typedef TYPE_3__ rbu_vfs ;
struct TYPE_12__ {int base; TYPE_1__* pRbu; } ;
typedef TYPE_4__ rbu_file ;
struct TYPE_9__ {scalar_t__ eStage; } ;


 scalar_t__ RBU_STAGE_OAL ;
 int SQLITE_ACCESS_EXISTS ;
 int SQLITE_CANTOPEN ;
 int SQLITE_OK ;
 TYPE_4__* rbuFindMaindb (TYPE_3__*,char const*,int) ;
 int rbuVfsFileSize (int *,scalar_t__*) ;
 int stub1 (TYPE_2__*,char const*,int,int*) ;

__attribute__((used)) static int rbuVfsAccess(
  sqlite3_vfs *pVfs,
  const char *zPath,
  int flags,
  int *pResOut
){
  rbu_vfs *pRbuVfs = (rbu_vfs*)pVfs;
  sqlite3_vfs *pRealVfs = pRbuVfs->pRealVfs;
  int rc;

  rc = pRealVfs->xAccess(pRealVfs, zPath, flags, pResOut);
  if( rc==SQLITE_OK && flags==SQLITE_ACCESS_EXISTS ){
    rbu_file *pDb = rbuFindMaindb(pRbuVfs, zPath, 1);
    if( pDb && pDb->pRbu && pDb->pRbu->eStage==RBU_STAGE_OAL ){
      if( *pResOut ){
        rc = SQLITE_CANTOPEN;
      }else{
        sqlite3_int64 sz = 0;
        rc = rbuVfsFileSize(&pDb->base, &sz);
        *pResOut = (sz>0);
      }
    }
  }

  return rc;
}
