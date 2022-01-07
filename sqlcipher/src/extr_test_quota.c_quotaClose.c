
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_14__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
typedef int quotaGroup ;
struct TYPE_15__ {scalar_t__ nRef; int zFilename; scalar_t__ deleteOnClose; int * pGroup; } ;
typedef TYPE_3__ quotaFile ;
struct TYPE_16__ {TYPE_3__* pFile; } ;
typedef TYPE_4__ quotaConn ;
struct TYPE_17__ {int (* xDelete ) (TYPE_5__*,int ,int ) ;} ;
struct TYPE_13__ {int (* xClose ) (TYPE_2__*) ;} ;
struct TYPE_12__ {TYPE_5__* pOrigVfs; } ;


 TYPE_11__ gQuota ;
 int quotaEnter () ;
 int quotaGroupDeref (int *) ;
 int quotaLeave () ;
 int quotaRemoveFile (TYPE_3__*) ;
 TYPE_2__* quotaSubOpen (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_5__*,int ,int ) ;

__attribute__((used)) static int quotaClose(sqlite3_file *pConn){
  quotaConn *p = (quotaConn*)pConn;
  quotaFile *pFile = p->pFile;
  sqlite3_file *pSubOpen = quotaSubOpen(pConn);
  int rc;
  rc = pSubOpen->pMethods->xClose(pSubOpen);
  quotaEnter();
  pFile->nRef--;
  if( pFile->nRef==0 ){
    quotaGroup *pGroup = pFile->pGroup;
    if( pFile->deleteOnClose ){
      gQuota.pOrigVfs->xDelete(gQuota.pOrigVfs, pFile->zFilename, 0);
      quotaRemoveFile(pFile);
    }
    quotaGroupDeref(pGroup);
  }
  quotaLeave();
  return rc;
}
