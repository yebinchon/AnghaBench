
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zMbcsName; TYPE_2__* pFile; int f; } ;
typedef TYPE_1__ quota_FILE ;
typedef int quotaGroup ;
struct TYPE_9__ {scalar_t__ nRef; int zFilename; scalar_t__ deleteOnClose; int * pGroup; } ;
typedef TYPE_2__ quotaFile ;
struct TYPE_11__ {TYPE_3__* pOrigVfs; } ;
struct TYPE_10__ {int (* xDelete ) (TYPE_3__*,int ,int ) ;} ;


 int fclose (int ) ;
 TYPE_7__ gQuota ;
 int quotaEnter () ;
 int quotaGroupDeref (int *) ;
 int quotaLeave () ;
 int quotaRemoveFile (TYPE_2__*) ;
 int quota_mbcs_free (int ) ;
 int sqlite3_free (TYPE_1__*) ;
 int stub1 (TYPE_3__*,int ,int ) ;

int sqlite3_quota_fclose(quota_FILE *p){
  int rc;
  quotaFile *pFile;
  rc = fclose(p->f);
  pFile = p->pFile;
  if( pFile ){
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
  }



  sqlite3_free(p);
  return rc;
}
