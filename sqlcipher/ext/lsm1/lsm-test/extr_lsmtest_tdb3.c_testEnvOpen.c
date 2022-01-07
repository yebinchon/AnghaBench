
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lsm_file ;
struct TYPE_7__ {int (* xOpen ) (TYPE_1__*,char const*,int,int *) ;scalar_t__ pVfsCtx; } ;
typedef TYPE_1__ lsm_env ;
struct TYPE_8__ {int bLog; int pReal; int * pDb; } ;
typedef TYPE_2__ LsmFile ;
typedef int LsmDb ;


 int LSM_OK ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int strlen (char const*) ;
 int stub1 (TYPE_1__*,char const*,int,int *) ;
 TYPE_1__* tdb_lsm_env () ;
 int testFree (TYPE_2__*) ;
 scalar_t__ testMalloc (int) ;

__attribute__((used)) static int testEnvOpen(
  lsm_env *pEnv,
  const char *zFile,
  int flags,
  lsm_file **ppFile
){
  lsm_env *pRealEnv = tdb_lsm_env();
  LsmDb *pDb = (LsmDb *)pEnv->pVfsCtx;
  int rc;
  LsmFile *pRet;
  int nFile;

  nFile = strlen(zFile);
  pRet = (LsmFile *)testMalloc(sizeof(LsmFile));
  pRet->pDb = pDb;
  pRet->bLog = (nFile > 4 && 0==memcmp("-log", &zFile[nFile-4], 4));

  rc = pRealEnv->xOpen(pRealEnv, zFile, flags, &pRet->pReal);
  if( rc!=LSM_OK ){
    testFree(pRet);
    pRet = 0;
  }

  *ppFile = (lsm_file *)pRet;
  return rc;
}
