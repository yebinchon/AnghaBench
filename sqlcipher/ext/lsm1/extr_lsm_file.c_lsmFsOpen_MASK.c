#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ pWorker; scalar_t__ pClient; TYPE_3__* pFS; int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_12__ {char* zDb; char* zLog; int nPagesize; int nCacheMax; int nHash; int /*<<< orphan*/  fdDb; int /*<<< orphan*/  pEnv; int /*<<< orphan*/  szSector; TYPE_2__* pLsmFile; void* apHash; TYPE_1__* pDb; int /*<<< orphan*/  nMetaRwSize; int /*<<< orphan*/  nMetasize; int /*<<< orphan*/  nBlocksize; } ;
struct TYPE_11__ {int /*<<< orphan*/  pFile; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_2__ LsmFile ;
typedef  TYPE_3__ FileSystem ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_DFLT_BLOCK_SIZE ; 
 int LSM_DFLT_PAGE_SIZE ; 
 int /*<<< orphan*/  LSM_META_PAGE_SIZE ; 
 int /*<<< orphan*/  LSM_META_RW_PAGE_SIZE ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char const*) ; 

int FUNC9(
  lsm_db *pDb,                    /* Database connection to open fd for */
  const char *zDb,                /* Full path to database file */
  int bReadonly                   /* True to open db file read-only */
){
  FileSystem *pFS;
  int rc = LSM_OK;
  int nDb = FUNC8(zDb);
  int nByte;

  FUNC0( pDb->pFS==0 );
  FUNC0( pDb->pWorker==0 && pDb->pClient==0 );

  nByte = sizeof(FileSystem) + nDb+1 + nDb+4+1;
  pFS = (FileSystem *)FUNC5(pDb->pEnv, nByte, &rc);
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

    /* Make a copy of the database and log file names. */
    FUNC6(pFS->zDb, zDb, nDb+1);
    FUNC6(pFS->zLog, zDb, nDb);
    FUNC6(&pFS->zLog[nDb], "-log", 5);

    /* Allocate the hash-table here. At some point, it should be changed
    ** so that it can grow dynamicly. */
    pFS->nCacheMax = 2048*1024 / pFS->nPagesize;
    pFS->nHash = 4096;
    pFS->apHash = FUNC5(pDb->pEnv, sizeof(Page *) * pFS->nHash, &rc);

    /* Open the database file */
    pLsmFile = FUNC2(pDb);
    if( pLsmFile ){
      pFS->pLsmFile = pLsmFile;
      pFS->fdDb = pLsmFile->pFile;
      FUNC7(pLsmFile, 0, sizeof(LsmFile));
    }else{
      pFS->pLsmFile = FUNC5(pDb->pEnv, sizeof(LsmFile), &rc);
      if( rc==LSM_OK ){
        pFS->fdDb = FUNC1(pFS, bReadonly, 0, &rc);
      }
    }

    if( rc!=LSM_OK ){
      FUNC4(pFS);
      pFS = 0;
    }else{
      pFS->szSector = FUNC3(pFS->pEnv, pFS->fdDb);
    }
  }

  pDb->pFS = pFS;
  return rc;
}