
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* pFiles; } ;
typedef TYPE_2__ quotaGroup ;
struct TYPE_12__ {char* zFilename; int deleteOnClose; scalar_t__ nRef; struct TYPE_12__* pNext; } ;
typedef TYPE_3__ quotaFile ;
struct TYPE_10__ {scalar_t__ mxPathname; } ;
struct TYPE_14__ {TYPE_4__* pOrigVfs; TYPE_1__ sThisVfs; } ;
struct TYPE_13__ {int (* xFullPathname ) (TYPE_4__*,char const*,scalar_t__,char*) ;int (* xDelete ) (TYPE_4__*,char*,int ) ;} ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 TYPE_9__ gQuota ;
 int quotaEnter () ;
 int quotaGroupDeref (TYPE_2__*) ;
 TYPE_2__* quotaGroupFind (char*) ;
 int quotaLeave () ;
 int quotaRemoveFile (TYPE_3__*) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_malloc (scalar_t__) ;
 size_t strlen (char*) ;
 int strncmp (char*,char*,size_t) ;
 int stub1 (TYPE_4__*,char const*,scalar_t__,char*) ;
 int stub2 (TYPE_4__*,char*,int ) ;

int sqlite3_quota_remove(const char *zFilename){
  char *zFull;
  size_t nFull;
  int rc;
  quotaGroup *pGroup;
  quotaFile *pFile;
  quotaFile *pNextFile;
  int diff;
  char c;

  zFull = (char*)sqlite3_malloc(gQuota.sThisVfs.mxPathname + 1);
  if( zFull==0 ) return SQLITE_NOMEM;
  rc = gQuota.pOrigVfs->xFullPathname(gQuota.pOrigVfs, zFilename,
                                      gQuota.sThisVfs.mxPathname+1, zFull);
  if( rc ){
    sqlite3_free(zFull);
    return rc;
  }




  nFull = strlen(zFull);
  if( nFull>0 && (zFull[nFull-1]=='/' || zFull[nFull-1]=='\\') ){
    nFull--;
    zFull[nFull] = 0;
  }

  quotaEnter();
  pGroup = quotaGroupFind(zFull);
  if( pGroup ){
    for(pFile=pGroup->pFiles; pFile && rc==SQLITE_OK; pFile=pNextFile){
      pNextFile = pFile->pNext;
      diff = strncmp(zFull, pFile->zFilename, nFull);
      if( diff==0 && ((c = pFile->zFilename[nFull])==0 || c=='/' || c=='\\') ){
        if( pFile->nRef ){
          pFile->deleteOnClose = 1;
        }else{
          rc = gQuota.pOrigVfs->xDelete(gQuota.pOrigVfs, pFile->zFilename, 0);
          quotaRemoveFile(pFile);
          quotaGroupDeref(pGroup);
        }
      }
    }
  }
  quotaLeave();
  sqlite3_free(zFull);
  return rc;
}
