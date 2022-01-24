#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct CfgParam   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zParam ;
typedef  int /*<<< orphan*/  lsm_db ;
struct CfgParam {char const* zParam; int bWorker; int eParam; } ;
struct TYPE_4__ {int bNoRecovery; int nMtMinCkpt; int nMtMaxCkpt; } ;
typedef  TYPE_1__ LsmDb ;

/* Variables and functions */
 int LSM_CONFIG_AUTOCHECKPOINT ; 
 int LSM_CONFIG_AUTOFLUSH ; 
 int LSM_CONFIG_AUTOMERGE ; 
 int LSM_CONFIG_AUTOWORK ; 
 int LSM_CONFIG_BLOCK_SIZE ; 
 int LSM_CONFIG_MAX_FREELIST ; 
 int LSM_CONFIG_MMAP ; 
 int LSM_CONFIG_MULTIPLE_PROCESSES ; 
 int LSM_CONFIG_PAGE_SIZE ; 
 int LSM_CONFIG_SAFETY ; 
 int LSM_CONFIG_USE_LOG ; 
#define  TEST_COMPRESSION 132 
#define  TEST_MT_MAX_CKPT 131 
#define  TEST_MT_MIN_CKPT 130 
#define  TEST_MT_MODE 129 
#define  TEST_NO_RECOVERY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (TYPE_3__*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

int FUNC7(
  LsmDb *pLsm,
  lsm_db *db, 
  int bWorker,
  const char *zStr,
  int *pnThread
){
  struct CfgParam {
    const char *zParam;
    int bWorker;
    int eParam;
  } aParam[] = {
    { "autoflush",        0, LSM_CONFIG_AUTOFLUSH },
    { "page_size",        0, LSM_CONFIG_PAGE_SIZE },
    { "block_size",       0, LSM_CONFIG_BLOCK_SIZE },
    { "safety",           0, LSM_CONFIG_SAFETY },
    { "autowork",         0, LSM_CONFIG_AUTOWORK },
    { "autocheckpoint",   0, LSM_CONFIG_AUTOCHECKPOINT },
    { "mmap",             0, LSM_CONFIG_MMAP },
    { "use_log",          0, LSM_CONFIG_USE_LOG },
    { "automerge",        0, LSM_CONFIG_AUTOMERGE },
    { "max_freelist",     0, LSM_CONFIG_MAX_FREELIST },
    { "multi_proc",       0, LSM_CONFIG_MULTIPLE_PROCESSES },
    { "worker_automerge", 1, LSM_CONFIG_AUTOMERGE },
    { "test_no_recovery", 0, TEST_NO_RECOVERY },
    { "bg_min_ckpt",      0, TEST_NO_RECOVERY },

    { "mt_mode",          0, TEST_MT_MODE },
    { "mt_min_ckpt",      0, TEST_MT_MIN_CKPT },
    { "mt_max_ckpt",      0, TEST_MT_MAX_CKPT },

#ifdef HAVE_ZLIB
    { "compression",      0, TEST_COMPRESSION },
#endif
    { 0, 0 }
  };
  const char *z = zStr;
  int nThread = 1;

  if( zStr==0 ) return 0;

  FUNC0( db );
  while( z[0] ){
    const char *zStart;

    /* Skip whitespace */
    while( *z==' ' ) z++;
    zStart = z;

    while( *z && *z!='=' ) z++;
    if( *z ){
      int eParam;
      int i;
      int iVal;
      int iMul = 1;
      int rc;
      char zParam[32];
      int nParam = z-zStart;
      if( nParam==0 || nParam>sizeof(zParam)-1 ) goto syntax_error;

      FUNC3(zParam, zStart, nParam);
      zParam[nParam] = '\0';
      rc = FUNC4(aParam, "param", zParam, &i);
      if( rc!=0 ) return rc;
      eParam = aParam[i].eParam;

      z++;
      zStart = z;
      while( *z>='0' && *z<='9' ) z++;
      if( *z=='k' || *z=='K' ){
        iMul = 1;
        z++;
      }else if( *z=='M' || *z=='M' ){
        iMul = 1024;
        z++;
      }
      nParam = z-zStart;
      if( nParam==0 || nParam>sizeof(zParam)-1 ) goto syntax_error;
      FUNC3(zParam, zStart, nParam);
      zParam[nParam] = '\0';
      iVal = FUNC1(zParam) * iMul;

      if( eParam>0 ){
        if( bWorker || aParam[i].bWorker==0 ){
          FUNC2(db, eParam, &iVal);
        }
      }else{
        switch( eParam ){
          case TEST_NO_RECOVERY:
            if( pLsm ) pLsm->bNoRecovery = iVal;
            break;
          case TEST_MT_MODE:
            if( pLsm ) nThread = iVal;
            break;
          case TEST_MT_MIN_CKPT:
            if( pLsm && iVal>0 ) pLsm->nMtMinCkpt = iVal*1024;
            break;
          case TEST_MT_MAX_CKPT:
            if( pLsm && iVal>0 ) pLsm->nMtMaxCkpt = iVal*1024;
            break;
#ifdef HAVE_ZLIB
          case TEST_COMPRESSION:
            testConfigureCompression(db);
            break;
#endif
        }
      }
    }else if( z!=zStart ){
      goto syntax_error;
    }
  }

  if( pnThread ) *pnThread = nThread;
  if( pLsm && pLsm->nMtMaxCkpt < pLsm->nMtMinCkpt ){
    pLsm->nMtMinCkpt = pLsm->nMtMaxCkpt;
  }

  return 0;
 syntax_error:
  FUNC6("syntax error at: \"%s\"\n", z);
  return 1;
}