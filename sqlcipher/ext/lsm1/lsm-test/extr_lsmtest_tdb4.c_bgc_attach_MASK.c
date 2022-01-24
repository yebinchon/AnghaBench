#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite4_buffer ;
struct TYPE_14__ {int /*<<< orphan*/  xLogsize; void* pCtx; } ;
typedef  TYPE_1__ bt_logsizecb ;
struct TYPE_18__ {int n; scalar_t__ p; } ;
struct TYPE_15__ {TYPE_6__ output; scalar_t__ pgno; int /*<<< orphan*/  eType; } ;
typedef  TYPE_2__ bt_info ;
struct TYPE_19__ {int n; int /*<<< orphan*/  p; } ;
struct TYPE_16__ {int nLogsize; int nRef; int /*<<< orphan*/  ckpter_thread; int /*<<< orphan*/  ckpter_mutex; int /*<<< orphan*/  ckpter_cond; TYPE_6__ spec; struct TYPE_16__* pNext; TYPE_9__ file; } ;
typedef  TYPE_3__ bt_ckpter ;
struct TYPE_17__ {int /*<<< orphan*/  pEnv; TYPE_3__* pCkpter; int /*<<< orphan*/  pBt; } ;
struct TYPE_13__ {TYPE_3__* pCkpter; } ;
typedef  TYPE_4__ BtDb ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONTROL_INFO ; 
 int /*<<< orphan*/  BT_CONTROL_LOGSIZECB ; 
 int /*<<< orphan*/  BT_INFO_FILENAME ; 
 int /*<<< orphan*/  SQLITE4_MUTEX_STATIC_KV ; 
 int SQLITE4_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bgc_logsize_cb ; 
 int /*<<< orphan*/  bgc_main ; 
 TYPE_11__ gBgc ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,TYPE_6__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_6__*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char const*) ; 
 TYPE_3__* FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(BtDb *pDb, const char *zSpec){
  int rc;
  int n;
  bt_info info;
  bt_ckpter *pCkpter;

  /* Figure out the full path to the database opened by handle pDb. */
  info.eType = BT_INFO_FILENAME;
  info.pgno = 0;
  FUNC8(&info.output, 0);
  rc = FUNC6(pDb->pBt, BT_CONTROL_INFO, (void*)&info);
  if( rc!=SQLITE4_OK ) return rc;

  FUNC11(FUNC10(pDb->pEnv, SQLITE4_MUTEX_STATIC_KV));

  /* Search for an existing bt_ckpter object. */
  n = info.output.n;
  for(pCkpter=gBgc.pCkpter; pCkpter; pCkpter=pCkpter->pNext){
    if( n==pCkpter->file.n && 0==FUNC1(info.output.p, pCkpter->file.p, n) ){
      break;
    }
  }

  /* Failed to find a suitable checkpointer. Create a new one. */
  if( pCkpter==0 ){
    bt_logsizecb cb;

    pCkpter = FUNC14(sizeof(bt_ckpter));
    FUNC2(&pCkpter->file, &info.output, sizeof(sqlite4_buffer));
    info.output.p = 0;
    pCkpter->pNext = gBgc.pCkpter;
    pCkpter->nLogsize = 1000;
    gBgc.pCkpter = pCkpter;
    pCkpter->nRef = 1;

    FUNC8(&pCkpter->spec, 0);
    rc = FUNC9(&pCkpter->spec, zSpec, FUNC13(zSpec)+1);
    FUNC0( rc==SQLITE4_OK );

    /* Kick off the checkpointer thread. */
    if( rc==0 ) rc = FUNC3(&pCkpter->ckpter_cond, 0);
    if( rc==0 ) rc = FUNC5(&pCkpter->ckpter_mutex, 0);
    if( rc==0 ){
      rc = FUNC4(&pCkpter->ckpter_thread, 0, bgc_main, (void*)pCkpter);
    }
    FUNC0( rc==0 ); /* todo: Fix this */

    /* Set up the logsize callback for the client thread */
    cb.pCtx = (void*)pCkpter;
    cb.xLogsize = bgc_logsize_cb;
    FUNC6(pDb->pBt, BT_CONTROL_LOGSIZECB, (void*)&cb);
  }else{
    pCkpter->nRef++;
  }

  /* Assuming a checkpointer was encountered or effected, attach the 
  ** connection to it.  */
  if( pCkpter ){
    pDb->pCkpter = pCkpter;
  }

  FUNC12(FUNC10(pDb->pEnv, SQLITE4_MUTEX_STATIC_KV));
  FUNC7(&info.output);
  return rc;
}