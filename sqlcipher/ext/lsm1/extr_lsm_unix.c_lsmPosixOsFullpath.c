
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_env ;


 scalar_t__ ERANGE ;
 int LSM_IOERR_BKPT ;
 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 int assert (int) ;
 scalar_t__ errno ;
 char* getcwd (char*,int) ;
 int lsmFree (int *,char*) ;
 char* lsmMalloc (int *,int) ;
 char* lsmReallocOrFree (int *,char*,int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int lsmPosixOsFullpath(
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
    zTmp = lsmMalloc(pEnv, nTmp);
    while( zTmp ){
      z = getcwd(zTmp, nTmp);
      if( z || errno!=ERANGE ) break;
      nTmp = nTmp*2;
      zTmp = lsmReallocOrFree(pEnv, zTmp, nTmp);
    }
    if( zTmp==0 ) return LSM_NOMEM_BKPT;
    if( z==0 ) return LSM_IOERR_BKPT;
    assert( z==zTmp );

    nTmp = strlen(zTmp);
    nReq = nTmp + 1 + strlen(zName) + 1;
    if( nReq<=nBuf ){
      memcpy(zOut, zTmp, nTmp);
      zOut[nTmp] = '/';
      memcpy(&zOut[nTmp+1], zName, strlen(zName)+1);
    }
    lsmFree(pEnv, zTmp);
  }else{
    nReq = strlen(zName)+1;
    if( nReq<=nBuf ){
      memcpy(zOut, zName, strlen(zName)+1);
    }
  }

  *pnOut = nReq;
  return LSM_OK;
}
