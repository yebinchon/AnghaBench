#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bt_db ;
struct TYPE_9__ {scalar_t__ p; } ;
struct TYPE_8__ {scalar_t__ p; } ;
struct TYPE_10__ {scalar_t__ nRef; int nLogsize; scalar_t__ bDoWork; int /*<<< orphan*/  ckpter_mutex; int /*<<< orphan*/  ckpter_cond; TYPE_2__ spec; TYPE_1__ file; } ;
typedef  TYPE_3__ bt_ckpter ;
struct TYPE_11__ {int nFrameBuffer; } ;
typedef  TYPE_4__ bt_checkpoint ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_12__ {int /*<<< orphan*/ * pBt; } ;
typedef  TYPE_5__ BtDb ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONTROL_CHECKPOINT ; 
 int /*<<< orphan*/  BT_CONTROL_LOGSIZE ; 
 int SQLITE4_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC9 (TYPE_5__*,char*,int*) ; 
 int FUNC10 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void *FUNC11(void *pArg){
  BtDb *pDb = 0;
  int rc;
  int mt;
  bt_ckpter *pCkpter = (bt_ckpter*)pArg;

  rc = FUNC10("", (char*)pCkpter->file.p, 0, (TestDb**)&pDb);
  FUNC0( rc==SQLITE4_OK );
  rc = FUNC9(pDb, (char*)pCkpter->spec.p, &mt);

  while( pCkpter->nRef>0 ){
    bt_db *db = pDb->pBt;
    int nLog = 0;

    FUNC6(db, 1);
    FUNC7(db, 0);
    FUNC8(db, BT_CONTROL_LOGSIZE, (void*)&nLog);

    if( nLog>=pCkpter->nLogsize ){
      int rc;
      bt_checkpoint ckpt;
      FUNC2(&ckpt, 0, sizeof(bt_checkpoint));
      ckpt.nFrameBuffer = nLog/2;
      rc = FUNC8(db, BT_CONTROL_CHECKPOINT, (void*)&ckpt);
      FUNC0( rc==SQLITE4_OK );
      FUNC8(db, BT_CONTROL_LOGSIZE, (void*)&nLog);
    }

    /* The thread will wake up when it is signaled either because another
    ** thread has created some work for this one or because the connection
    ** is being closed.  */
    FUNC4(&pCkpter->ckpter_mutex);
    if( pCkpter->bDoWork==0 ){
      FUNC3(&pCkpter->ckpter_cond, &pCkpter->ckpter_mutex);
    }
    pCkpter->bDoWork = 0;
    FUNC5(&pCkpter->ckpter_mutex);
  }

  if( pDb ) FUNC1((TestDb*)pDb);
  return 0;
}