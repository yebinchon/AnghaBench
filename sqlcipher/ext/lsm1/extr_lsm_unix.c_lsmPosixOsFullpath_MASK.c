#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_env ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int LSM_IOERR_BKPT ; 
 int LSM_NOMEM_BKPT ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(
  lsm_env *pEnv,
  const char *zName,
  char *zOut,
  int *pnOut
){
  int nBuf = *pnOut;
  int nReq;

  if( zName[0]!='/' ){
    char *z;
    char *zTmp;
    int nTmp = 512;
    zTmp = FUNC3(pEnv, nTmp);
    while( zTmp ){
      z = FUNC1(zTmp, nTmp);
      if( z || errno!=ERANGE ) break;
      nTmp = nTmp*2;
      zTmp = FUNC4(pEnv, zTmp, nTmp);
    }
    if( zTmp==0 ) return LSM_NOMEM_BKPT;
    if( z==0 ) return LSM_IOERR_BKPT;
    FUNC0( z==zTmp );

    nTmp = FUNC6(zTmp);
    nReq = nTmp + 1 + FUNC6(zName) + 1;
    if( nReq<=nBuf ){
      FUNC5(zOut, zTmp, nTmp);
      zOut[nTmp] = '/';
      FUNC5(&zOut[nTmp+1], zName, FUNC6(zName)+1);
    }
    FUNC2(pEnv, zTmp);
  }else{
    nReq = FUNC6(zName)+1;
    if( nReq<=nBuf ){
      FUNC5(zOut, zName, FUNC6(zName)+1);
    }
  }

  *pnOut = nReq;
  return LSM_OK;
}