
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ pWorker; scalar_t__ pClient; TYPE_3__* pFS; int pEnv; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_12__ {char* zDb; char* zLog; int nPagesize; int nCacheMax; int nHash; int fdDb; int pEnv; int szSector; TYPE_2__* pLsmFile; void* apHash; TYPE_1__* pDb; int nMetaRwSize; int nMetasize; int nBlocksize; } ;
struct TYPE_11__ {int pFile; } ;
typedef int Page ;
typedef TYPE_2__ LsmFile ;
typedef TYPE_3__ FileSystem ;


 int LSM_DFLT_BLOCK_SIZE ;
 int LSM_DFLT_PAGE_SIZE ;
 int LSM_META_PAGE_SIZE ;
 int LSM_META_RW_PAGE_SIZE ;
 int LSM_OK ;
 int assert (int) ;
 int fsOpenFile (TYPE_3__*,int,int ,int*) ;
 TYPE_2__* lsmDbRecycleFd (TYPE_1__*) ;
 int lsmEnvSectorSize (int ,int ) ;
 int lsmFsClose (TYPE_3__*) ;
 void* lsmMallocZeroRc (int ,int,int*) ;
 int memcpy (char*,char const*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int strlen (char const*) ;

int lsmFsOpen(
  lsm_db *pDb,
  const char *zDb,
  int bReadonly
){
  FileSystem *pFS;
  int rc = LSM_OK;
  int nDb = strlen(zDb);
  int nByte;

  assert( pDb->pFS==0 );
  assert( pDb->pWorker==0 && pDb->pClient==0 );

  nByte = sizeof(FileSystem) + nDb+1 + nDb+4+1;
  pFS = (FileSystem *)lsmMallocZeroRc(pDb->pEnv, nByte, &rc);
  if( pFS ){
    LsmFile *pLsmFile;
    pFS->zDb = (char *)&pFS[1];
    pFS->zLog = &pFS->zDb[nDb+1];
    pFS->nPagesize = LSM_DFLT_PAGE_SIZE;
    pFS->nBlocksize = LSM_DFLT_BLOCK_SIZE;
    pFS->nMetasize = LSM_META_PAGE_SIZE;
    pFS->nMetaRwSize = LSM_META_RW_PAGE_SIZE;
    pFS->pDb = pDb;
    pFS->pEnv = pDb->pEnv;


    memcpy(pFS->zDb, zDb, nDb+1);
    memcpy(pFS->zLog, zDb, nDb);
    memcpy(&pFS->zLog[nDb], "-log", 5);



    pFS->nCacheMax = 2048*1024 / pFS->nPagesize;
    pFS->nHash = 4096;
    pFS->apHash = lsmMallocZeroRc(pDb->pEnv, sizeof(Page *) * pFS->nHash, &rc);


    pLsmFile = lsmDbRecycleFd(pDb);
    if( pLsmFile ){
      pFS->pLsmFile = pLsmFile;
      pFS->fdDb = pLsmFile->pFile;
      memset(pLsmFile, 0, sizeof(LsmFile));
    }else{
      pFS->pLsmFile = lsmMallocZeroRc(pDb->pEnv, sizeof(LsmFile), &rc);
      if( rc==LSM_OK ){
        pFS->fdDb = fsOpenFile(pFS, bReadonly, 0, &rc);
      }
    }

    if( rc!=LSM_OK ){
      lsmFsClose(pFS);
      pFS = 0;
    }else{
      pFS->szSector = lsmEnvSectorSize(pFS->pEnv, pFS->fdDb);
    }
  }

  pDb->pFS = pFS;
  return rc;
}
