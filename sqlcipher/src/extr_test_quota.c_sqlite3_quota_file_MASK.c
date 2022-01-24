#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_11__ {TYPE_1__* pMethods; } ;
typedef  TYPE_2__ sqlite3_file ;
typedef  int /*<<< orphan*/  quotaGroup ;
typedef  int /*<<< orphan*/  quotaFile ;
struct TYPE_13__ {int szOsFile; int mxPathname; } ;
struct TYPE_14__ {TYPE_7__ sThisVfs; TYPE_5__* pOrigVfs; } ;
struct TYPE_12__ {int (* xFullPathname ) (TYPE_5__*,char const*,int,char*) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  (* xClose ) (TYPE_2__*) ;int /*<<< orphan*/  (* xFileSize ) (TYPE_2__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int SQLITE_CANTOPEN ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_OPEN_MAIN_DB ; 
 int SQLITE_OPEN_READONLY ; 
 TYPE_9__ gQuota ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_7__*,char*,TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (TYPE_5__*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

int FUNC12(const char *zFilename){
  char *zFull = 0;
  sqlite3_file *fd;
  int rc;
  int outFlags = 0;
  sqlite3_int64 iSize;
  int nAlloc = gQuota.sThisVfs.szOsFile + gQuota.sThisVfs.mxPathname+2;

  /* Allocate space for a file-handle and the full path for file zFilename */
  fd = (sqlite3_file *)FUNC7(nAlloc);
  if( fd==0 ){
    rc = SQLITE_NOMEM;
  }else{
    zFull = &((char *)fd)[gQuota.sThisVfs.szOsFile];
    rc = gQuota.pOrigVfs->xFullPathname(gQuota.pOrigVfs, zFilename,
        gQuota.sThisVfs.mxPathname+1, zFull);
  }

  if( rc==SQLITE_OK ){
    zFull[FUNC8(zFull)+1] = '\0';
    rc = FUNC4(&gQuota.sThisVfs, zFull, fd,
                   SQLITE_OPEN_READONLY | SQLITE_OPEN_MAIN_DB, &outFlags);
    if( rc==SQLITE_OK ){
      fd->pMethods->xFileSize(fd, &iSize);
      fd->pMethods->xClose(fd);
    }else if( rc==SQLITE_CANTOPEN ){
      quotaGroup *pGroup;
      quotaFile *pFile;
      FUNC0();
      pGroup = FUNC2(zFull);
      if( pGroup ){
        pFile = FUNC1(pGroup, zFull, 0);
        if( pFile ) FUNC5(pFile);
      }
      FUNC3();
    }
  }

  FUNC6(fd);
  return rc;
}