
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* xDelete ) (TYPE_1__*,char const*,int) ;} ;
typedef TYPE_1__ sqlite3_vfs ;
typedef int quotaGroup ;
struct TYPE_9__ {int deleteOnClose; scalar_t__ nRef; } ;
typedef TYPE_2__ quotaFile ;
struct TYPE_10__ {TYPE_1__* pOrigVfs; } ;


 int SQLITE_OK ;
 TYPE_7__ gQuota ;
 int quotaEnter () ;
 TYPE_2__* quotaFindFile (int *,char const*,int ) ;
 int quotaGroupDeref (int *) ;
 int * quotaGroupFind (char const*) ;
 int quotaLeave () ;
 int quotaRemoveFile (TYPE_2__*) ;
 int stub1 (TYPE_1__*,char const*,int) ;

__attribute__((used)) static int quotaDelete(
  sqlite3_vfs *pVfs,
  const char *zName,
  int syncDir
){
  int rc;
  quotaFile *pFile;
  quotaGroup *pGroup;
  sqlite3_vfs *pOrigVfs = gQuota.pOrigVfs;


  rc = pOrigVfs->xDelete(pOrigVfs, zName, syncDir);




  if( rc==SQLITE_OK ){
    quotaEnter();
    pGroup = quotaGroupFind(zName);
    if( pGroup ){
      pFile = quotaFindFile(pGroup, zName, 0);
      if( pFile ){
        if( pFile->nRef ){
          pFile->deleteOnClose = 1;
        }else{
          quotaRemoveFile(pFile);
          quotaGroupDeref(pGroup);
        }
      }
    }
    quotaLeave();
  }
  return rc;
}
