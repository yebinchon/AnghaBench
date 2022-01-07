
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_11__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
typedef int quotaGroup ;
typedef int quotaFile ;
struct TYPE_13__ {int szOsFile; int mxPathname; } ;
struct TYPE_14__ {TYPE_7__ sThisVfs; TYPE_5__* pOrigVfs; } ;
struct TYPE_12__ {int (* xFullPathname ) (TYPE_5__*,char const*,int,char*) ;} ;
struct TYPE_10__ {int (* xClose ) (TYPE_2__*) ;int (* xFileSize ) (TYPE_2__*,int *) ;} ;


 int SQLITE_CANTOPEN ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_OPEN_MAIN_DB ;
 int SQLITE_OPEN_READONLY ;
 TYPE_9__ gQuota ;
 int quotaEnter () ;
 int * quotaFindFile (int *,char*,int ) ;
 int * quotaGroupFind (char*) ;
 int quotaLeave () ;
 int quotaOpen (TYPE_7__*,char*,TYPE_2__*,int,int*) ;
 int quotaRemoveFile (int *) ;
 int sqlite3_free (TYPE_2__*) ;
 scalar_t__ sqlite3_malloc (int) ;
 int strlen (char*) ;
 int stub1 (TYPE_5__*,char const*,int,char*) ;
 int stub2 (TYPE_2__*,int *) ;
 int stub3 (TYPE_2__*) ;

int sqlite3_quota_file(const char *zFilename){
  char *zFull = 0;
  sqlite3_file *fd;
  int rc;
  int outFlags = 0;
  sqlite3_int64 iSize;
  int nAlloc = gQuota.sThisVfs.szOsFile + gQuota.sThisVfs.mxPathname+2;


  fd = (sqlite3_file *)sqlite3_malloc(nAlloc);
  if( fd==0 ){
    rc = SQLITE_NOMEM;
  }else{
    zFull = &((char *)fd)[gQuota.sThisVfs.szOsFile];
    rc = gQuota.pOrigVfs->xFullPathname(gQuota.pOrigVfs, zFilename,
        gQuota.sThisVfs.mxPathname+1, zFull);
  }

  if( rc==SQLITE_OK ){
    zFull[strlen(zFull)+1] = '\0';
    rc = quotaOpen(&gQuota.sThisVfs, zFull, fd,
                   SQLITE_OPEN_READONLY | SQLITE_OPEN_MAIN_DB, &outFlags);
    if( rc==SQLITE_OK ){
      fd->pMethods->xFileSize(fd, &iSize);
      fd->pMethods->xClose(fd);
    }else if( rc==SQLITE_CANTOPEN ){
      quotaGroup *pGroup;
      quotaFile *pFile;
      quotaEnter();
      pGroup = quotaGroupFind(zFull);
      if( pGroup ){
        pFile = quotaFindFile(pGroup, zFull, 0);
        if( pFile ) quotaRemoveFile(pFile);
      }
      quotaLeave();
    }
  }

  sqlite3_free(fd);
  return rc;
}
