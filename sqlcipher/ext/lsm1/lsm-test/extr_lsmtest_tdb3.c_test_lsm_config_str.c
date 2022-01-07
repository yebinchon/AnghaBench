
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct CfgParam TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zParam ;
typedef int lsm_db ;
struct CfgParam {char const* zParam; int bWorker; int eParam; } ;
struct TYPE_4__ {int bNoRecovery; int nMtMinCkpt; int nMtMaxCkpt; } ;
typedef TYPE_1__ LsmDb ;


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





 int assert (int *) ;
 int atoi (char*) ;
 int lsm_config (int *,int,int*) ;
 int memcpy (char*,char const*,int) ;
 int testArgSelect (TYPE_3__*,char*,char*,int*) ;
 int testConfigureCompression (int *) ;
 int testPrintError (char*,char const*) ;

int test_lsm_config_str(
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
    { "autoflush", 0, LSM_CONFIG_AUTOFLUSH },
    { "page_size", 0, LSM_CONFIG_PAGE_SIZE },
    { "block_size", 0, LSM_CONFIG_BLOCK_SIZE },
    { "safety", 0, LSM_CONFIG_SAFETY },
    { "autowork", 0, LSM_CONFIG_AUTOWORK },
    { "autocheckpoint", 0, LSM_CONFIG_AUTOCHECKPOINT },
    { "mmap", 0, LSM_CONFIG_MMAP },
    { "use_log", 0, LSM_CONFIG_USE_LOG },
    { "automerge", 0, LSM_CONFIG_AUTOMERGE },
    { "max_freelist", 0, LSM_CONFIG_MAX_FREELIST },
    { "multi_proc", 0, LSM_CONFIG_MULTIPLE_PROCESSES },
    { "worker_automerge", 1, LSM_CONFIG_AUTOMERGE },
    { "test_no_recovery", 0, 128 },
    { "bg_min_ckpt", 0, 128 },

    { "mt_mode", 0, 129 },
    { "mt_min_ckpt", 0, 130 },
    { "mt_max_ckpt", 0, 131 },




    { 0, 0 }
  };
  const char *z = zStr;
  int nThread = 1;

  if( zStr==0 ) return 0;

  assert( db );
  while( z[0] ){
    const char *zStart;


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

      memcpy(zParam, zStart, nParam);
      zParam[nParam] = '\0';
      rc = testArgSelect(aParam, "param", zParam, &i);
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
      memcpy(zParam, zStart, nParam);
      zParam[nParam] = '\0';
      iVal = atoi(zParam) * iMul;

      if( eParam>0 ){
        if( bWorker || aParam[i].bWorker==0 ){
          lsm_config(db, eParam, &iVal);
        }
      }else{
        switch( eParam ){
          case 128:
            if( pLsm ) pLsm->bNoRecovery = iVal;
            break;
          case 129:
            if( pLsm ) nThread = iVal;
            break;
          case 130:
            if( pLsm && iVal>0 ) pLsm->nMtMinCkpt = iVal*1024;
            break;
          case 131:
            if( pLsm && iVal>0 ) pLsm->nMtMaxCkpt = iVal*1024;
            break;





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
  testPrintError("syntax error at: \"%s\"\n", z);
  return 1;
}
