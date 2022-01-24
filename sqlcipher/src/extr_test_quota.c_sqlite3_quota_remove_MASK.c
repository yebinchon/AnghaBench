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
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* pFiles; } ;
typedef  TYPE_2__ quotaGroup ;
struct TYPE_12__ {char* zFilename; int deleteOnClose; scalar_t__ nRef; struct TYPE_12__* pNext; } ;
typedef  TYPE_3__ quotaFile ;
struct TYPE_10__ {scalar_t__ mxPathname; } ;
struct TYPE_14__ {TYPE_4__* pOrigVfs; TYPE_1__ sThisVfs; } ;
struct TYPE_13__ {int (* xFullPathname ) (TYPE_4__*,char const*,scalar_t__,char*) ;int (* xDelete ) (TYPE_4__*,char*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 TYPE_9__ gQuota ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 size_t FUNC7 (char*) ; 
 int FUNC8 (char*,char*,size_t) ; 
 int FUNC9 (TYPE_4__*,char const*,scalar_t__,char*) ; 
 int FUNC10 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 

int FUNC11(const char *zFilename){
  char *zFull;            /* Full pathname for zFilename */
  size_t nFull;           /* Number of bytes in zFilename */
  int rc;                 /* Result code */
  quotaGroup *pGroup;     /* Group containing zFilename */
  quotaFile *pFile;       /* A file in the group */
  quotaFile *pNextFile;   /* next file in the group */
  int diff;               /* Difference between filenames */
  char c;                 /* First character past end of pattern */

  zFull = (char*)FUNC6(gQuota.sThisVfs.mxPathname + 1);
  if( zFull==0 ) return SQLITE_NOMEM;
  rc = gQuota.pOrigVfs->xFullPathname(gQuota.pOrigVfs, zFilename,
                                      gQuota.sThisVfs.mxPathname+1, zFull);
  if( rc ){
    FUNC5(zFull);
    return rc;
  }

  /* Figure out the length of the full pathname.  If the name ends with
  ** / (or \ on windows) then remove the trailing /.
  */
  nFull = FUNC7(zFull);
  if( nFull>0 && (zFull[nFull-1]=='/' || zFull[nFull-1]=='\\') ){
    nFull--;
    zFull[nFull] = 0;
  }

  FUNC0();
  pGroup = FUNC2(zFull);
  if( pGroup ){
    for(pFile=pGroup->pFiles; pFile && rc==SQLITE_OK; pFile=pNextFile){
      pNextFile = pFile->pNext;
      diff = FUNC8(zFull, pFile->zFilename, nFull);
      if( diff==0 && ((c = pFile->zFilename[nFull])==0 || c=='/' || c=='\\') ){
        if( pFile->nRef ){
          pFile->deleteOnClose = 1;
        }else{
          rc = gQuota.pOrigVfs->xDelete(gQuota.pOrigVfs, pFile->zFilename, 0);
          FUNC4(pFile);
          FUNC1(pGroup);
        }
      }
    }
  }
  FUNC3();
  FUNC5(zFull);
  return rc;
}