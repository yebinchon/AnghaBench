
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_5__ {int f; TYPE_3__* pFile; } ;
typedef TYPE_1__ quota_FILE ;
struct TYPE_6__ {int iSize; } ;
typedef TYPE_2__ quotaGroup ;
struct TYPE_7__ {scalar_t__ iSize; TYPE_2__* pGroup; } ;
typedef TYPE_3__ quotaFile ;


 int _chsize (int ,long) ;
 int _chsize_s (int ,scalar_t__) ;
 int _fileno (int ) ;
 int fileno (int ) ;
 int ftruncate (int ,scalar_t__) ;
 int quotaEnter () ;
 int quotaLeave () ;

int sqlite3_quota_ftruncate(quota_FILE *p, sqlite3_int64 szNew){
  quotaFile *pFile = p->pFile;
  int rc;
  if( (pFile = p->pFile)!=0 && pFile->iSize<szNew ){
    quotaGroup *pGroup;
    if( pFile->iSize<szNew ){


      return -1;
    }
    pGroup = pFile->pGroup;
    quotaEnter();
    pGroup->iSize += szNew - pFile->iSize;
    quotaLeave();
  }
  if( pFile && rc==0 ){
    quotaGroup *pGroup = pFile->pGroup;
    quotaEnter();
    pGroup->iSize += szNew - pFile->iSize;
    pFile->iSize = szNew;
    quotaLeave();
  }
  return rc;
}
