
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_19__ ;


struct TYPE_23__ {int (* xOpen ) (TYPE_3__*,char const*,TYPE_4__*,int,int*) ;} ;
typedef TYPE_3__ sqlite3_vfs ;
struct TYPE_24__ {TYPE_1__* pMethods; } ;
typedef TYPE_4__ sqlite3_file ;
typedef int quotaGroup ;
struct TYPE_25__ {int deleteOnClose; int nRef; } ;
typedef TYPE_5__ quotaFile ;
struct TYPE_22__ {int * pMethods; } ;
struct TYPE_26__ {TYPE_2__ base; TYPE_5__* pFile; } ;
typedef TYPE_6__ quotaConn ;
struct TYPE_21__ {int iVersion; int (* xClose ) (TYPE_4__*) ;} ;
struct TYPE_20__ {int sIoMethodsV2; int sIoMethodsV1; TYPE_3__* pOrigVfs; } ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_OPEN_DELETEONCLOSE ;
 int SQLITE_OPEN_MAIN_DB ;
 int SQLITE_OPEN_WAL ;
 TYPE_19__ gQuota ;
 int quotaEnter () ;
 TYPE_5__* quotaFindFile (int *,char const*,int) ;
 int * quotaGroupFind (char const*) ;
 int quotaLeave () ;
 TYPE_4__* quotaSubOpen (TYPE_4__*) ;
 int stub1 (TYPE_3__*,char const*,TYPE_4__*,int,int*) ;
 int stub2 (TYPE_3__*,char const*,TYPE_4__*,int,int*) ;
 int stub3 (TYPE_3__*,char const*,TYPE_4__*,int,int*) ;
 int stub4 (TYPE_4__*) ;

__attribute__((used)) static int quotaOpen(
  sqlite3_vfs *pVfs,
  const char *zName,
  sqlite3_file *pConn,
  int flags,
  int *pOutFlags
){
  int rc;
  quotaConn *pQuotaOpen;
  quotaFile *pFile;
  quotaGroup *pGroup;
  sqlite3_file *pSubOpen;
  sqlite3_vfs *pOrigVfs = gQuota.pOrigVfs;




  if( (flags & (SQLITE_OPEN_MAIN_DB|SQLITE_OPEN_WAL))==0 ){
    return pOrigVfs->xOpen(pOrigVfs, zName, pConn, flags, pOutFlags);
  }




  quotaEnter();
  pGroup = quotaGroupFind(zName);
  if( pGroup==0 ){
    rc = pOrigVfs->xOpen(pOrigVfs, zName, pConn, flags, pOutFlags);
  }else{


    pQuotaOpen = (quotaConn*)pConn;
    pSubOpen = quotaSubOpen(pConn);
    rc = pOrigVfs->xOpen(pOrigVfs, zName, pSubOpen, flags, pOutFlags);
    if( rc==SQLITE_OK ){
      pFile = quotaFindFile(pGroup, zName, 1);
      if( pFile==0 ){
        quotaLeave();
        pSubOpen->pMethods->xClose(pSubOpen);
        return SQLITE_NOMEM;
      }
      pFile->deleteOnClose = (flags & SQLITE_OPEN_DELETEONCLOSE)!=0;
      pFile->nRef++;
      pQuotaOpen->pFile = pFile;
      if( pSubOpen->pMethods->iVersion==1 ){
        pQuotaOpen->base.pMethods = &gQuota.sIoMethodsV1;
      }else{
        pQuotaOpen->base.pMethods = &gQuota.sIoMethodsV2;
      }
    }
  }
  quotaLeave();
  return rc;
}
