#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_file ;
struct TYPE_7__ {int (* xOpen ) (TYPE_1__*,char const*,int,int /*<<< orphan*/ *) ;scalar_t__ pVfsCtx; } ;
typedef  TYPE_1__ lsm_env ;
struct TYPE_8__ {int bLog; int /*<<< orphan*/  pReal; int /*<<< orphan*/ * pDb; } ;
typedef  TYPE_2__ LsmFile ;
typedef  int /*<<< orphan*/  LsmDb ;

/* Variables and functions */
 int LSM_OK ; 
 scalar_t__ FUNC0 (char*,char const*,int) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (TYPE_1__*,char const*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(
  lsm_env *pEnv,                  /* Environment for current LsmDb */
  const char *zFile,              /* Name of file to open */
  int flags,
  lsm_file **ppFile               /* OUT: New file handle object */
){
  lsm_env *pRealEnv = FUNC3();
  LsmDb *pDb = (LsmDb *)pEnv->pVfsCtx;
  int rc;                         /* Return Code */
  LsmFile *pRet;                  /* The new file handle */
  int nFile;                      /* Length of string zFile in bytes */

  nFile = FUNC1(zFile);
  pRet = (LsmFile *)FUNC5(sizeof(LsmFile));
  pRet->pDb = pDb;
  pRet->bLog = (nFile > 4 && 0==FUNC0("-log", &zFile[nFile-4], 4));

  rc = pRealEnv->xOpen(pRealEnv, zFile, flags, &pRet->pReal);
  if( rc!=LSM_OK ){
    FUNC4(pRet);
    pRet = 0;
  }

  *ppFile = (lsm_file *)pRet;
  return rc;
}