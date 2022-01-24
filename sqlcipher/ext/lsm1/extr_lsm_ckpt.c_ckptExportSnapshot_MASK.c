#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_25__ {scalar_t__ iId; } ;
struct TYPE_27__ {int nMaxFreelist; TYPE_3__ compress; int /*<<< orphan*/  pEnv; TYPE_6__* pWorker; int /*<<< orphan*/ * pFS; } ;
typedef  TYPE_5__ lsm_db ;
typedef  int i64 ;
struct TYPE_31__ {scalar_t__ aCkpt; int /*<<< orphan*/  pEnv; } ;
struct TYPE_30__ {int iBlk; int iId; } ;
struct TYPE_29__ {struct TYPE_29__* pNext; } ;
struct TYPE_26__ {int nEntry; TYPE_8__* aEntry; } ;
struct TYPE_24__ {int n; TYPE_1__* a; } ;
struct TYPE_28__ {scalar_t__ iCmpId; int nBlock; int nWrite; TYPE_4__ freelist; TYPE_2__ redirect; } ;
struct TYPE_23__ {int iFrom; int iTo; } ;
typedef  TYPE_6__ Snapshot ;
typedef  TYPE_7__ Level ;
typedef  TYPE_8__ FreelistEntry ;
typedef  int /*<<< orphan*/  FileSystem ;
typedef  TYPE_9__ CkptBuffer ;

/* Variables and functions */
 int CKPT_HDR_BLKSZ ; 
 int CKPT_HDR_CMPID ; 
 int CKPT_HDR_ID_LSW ; 
 int CKPT_HDR_ID_MSW ; 
 int CKPT_HDR_NBLOCK ; 
 int CKPT_HDR_NCKPT ; 
 int CKPT_HDR_NLEVEL ; 
 int CKPT_HDR_NWRITE ; 
 int CKPT_HDR_PGSZ ; 
 int CKPT_HDR_SIZE ; 
 scalar_t__ LSM_COMPRESSION_EMPTY ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_9__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,TYPE_9__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int,TYPE_9__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,int,int,int*) ; 
 TYPE_7__* FUNC6 (TYPE_6__*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11( 
  lsm_db *pDb,                    /* Connection handle */
  int bLog,                       /* True to update log-offset fields */
  i64 iId,                        /* Checkpoint id */
  int bCksum,                     /* If true, include checksums */
  void **ppCkpt,                  /* OUT: Buffer containing checkpoint */
  int *pnCkpt                     /* OUT: Size of checkpoint in bytes */
){
  int rc = LSM_OK;                /* Return Code */
  FileSystem *pFS = pDb->pFS;     /* File system object */
  Snapshot *pSnap = pDb->pWorker; /* Worker snapshot */
  int nLevel = 0;                 /* Number of levels in checkpoint */
  int iLevel;                     /* Used to count out nLevel levels */
  int iOut = 0;                   /* Current offset in aCkpt[] */
  Level *pLevel;                  /* Level iterator */
  int i;                          /* Iterator used while serializing freelist */
  CkptBuffer ckpt;

  /* Initialize the output buffer */
  FUNC10(&ckpt, 0, sizeof(CkptBuffer));
  ckpt.pEnv = pDb->pEnv;
  iOut = CKPT_HDR_SIZE;

  /* Write the log offset into the checkpoint. */
  FUNC4(pDb, bLog, &ckpt, &iOut, &rc);

  /* Write the append-point list */
  FUNC2(pDb, &ckpt, &iOut, &rc);

  /* Figure out how many levels will be written to the checkpoint. */
  for(pLevel=FUNC6(pSnap); pLevel; pLevel=pLevel->pNext) nLevel++;

  /* Serialize nLevel levels. */
  iLevel = 0;
  for(pLevel=FUNC6(pSnap); iLevel<nLevel; pLevel=pLevel->pNext){
    FUNC3(pLevel, &ckpt, &iOut, &rc);
    iLevel++;
  }

  /* Write the block-redirect list */
  FUNC5(&ckpt, iOut++, pSnap->redirect.n, &rc);
  for(i=0; i<pSnap->redirect.n; i++){
    FUNC5(&ckpt, iOut++, pSnap->redirect.a[i].iFrom, &rc);
    FUNC5(&ckpt, iOut++, pSnap->redirect.a[i].iTo, &rc);
  }

  /* Write the freelist */
  FUNC0( pSnap->freelist.nEntry<=pDb->nMaxFreelist );
  if( rc==LSM_OK ){
    int nFree = pSnap->freelist.nEntry;
    FUNC5(&ckpt, iOut++, nFree, &rc);
    for(i=0; i<nFree; i++){
      FreelistEntry *p = &pSnap->freelist.aEntry[i];
      FUNC5(&ckpt, iOut++, p->iBlk, &rc);
      FUNC5(&ckpt, iOut++, (p->iId >> 32) & 0xFFFFFFFF, &rc);
      FUNC5(&ckpt, iOut++, p->iId & 0xFFFFFFFF, &rc);
    }
  }

  /* Write the checkpoint header */
  FUNC0( iId>=0 );
  FUNC0( pSnap->iCmpId==pDb->compress.iId
       || pSnap->iCmpId==LSM_COMPRESSION_EMPTY 
  );
  FUNC5(&ckpt, CKPT_HDR_ID_MSW, (u32)(iId>>32), &rc);
  FUNC5(&ckpt, CKPT_HDR_ID_LSW, (u32)(iId&0xFFFFFFFF), &rc);
  FUNC5(&ckpt, CKPT_HDR_NCKPT, iOut+2, &rc);
  FUNC5(&ckpt, CKPT_HDR_CMPID, pDb->compress.iId, &rc);
  FUNC5(&ckpt, CKPT_HDR_NBLOCK, pSnap->nBlock, &rc);
  FUNC5(&ckpt, CKPT_HDR_BLKSZ, FUNC7(pFS), &rc);
  FUNC5(&ckpt, CKPT_HDR_NLEVEL, nLevel, &rc);
  FUNC5(&ckpt, CKPT_HDR_PGSZ, FUNC8(pFS), &rc);
  FUNC5(&ckpt, CKPT_HDR_NWRITE, pSnap->nWrite, &rc);

  if( bCksum ){
    FUNC1(&ckpt, iOut, &rc);
  }else{
    FUNC5(&ckpt, iOut, 0, &rc);
    FUNC5(&ckpt, iOut+1, 0, &rc);
  }
  iOut += 2;
  FUNC0( iOut<=1024 );

#ifdef LSM_LOG_FREELIST
  lsmLogMessage(pDb, rc, 
      "ckptExportSnapshot(): id=%lld freelist: %d", iId, pSnap->freelist.nEntry
  );
  for(i=0; i<pSnap->freelist.nEntry; i++){
  lsmLogMessage(pDb, rc, 
      "ckptExportSnapshot(): iBlk=%d id=%lld", 
      pSnap->freelist.aEntry[i].iBlk,
      pSnap->freelist.aEntry[i].iId
  );
  }
#endif

  *ppCkpt = (void *)ckpt.aCkpt;
  if( pnCkpt ) *pnCkpt = sizeof(u32)*iOut;
  return rc;
}