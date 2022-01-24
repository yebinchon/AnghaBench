#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  zMbcsName; TYPE_2__* pFile; int /*<<< orphan*/  f; } ;
typedef  TYPE_1__ quota_FILE ;
typedef  int /*<<< orphan*/  quotaGroup ;
struct TYPE_9__ {scalar_t__ nRef; int /*<<< orphan*/  zFilename; scalar_t__ deleteOnClose; int /*<<< orphan*/ * pGroup; } ;
typedef  TYPE_2__ quotaFile ;
struct TYPE_11__ {TYPE_3__* pOrigVfs; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* xDelete ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_7__ gQuota ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(quota_FILE *p){
  int rc;
  quotaFile *pFile;
  rc = FUNC0(p->f);
  pFile = p->pFile;
  if( pFile ){
    FUNC1();
    pFile->nRef--;
    if( pFile->nRef==0 ){
      quotaGroup *pGroup = pFile->pGroup;
      if( pFile->deleteOnClose ){
        gQuota.pOrigVfs->xDelete(gQuota.pOrigVfs, pFile->zFilename, 0);
        FUNC4(pFile);
      }
      FUNC2(pGroup);
    }
    FUNC3();
  }
#if SQLITE_OS_WIN
  quota_mbcs_free(p->zMbcsName);
#endif
  FUNC6(p);
  return rc;
}