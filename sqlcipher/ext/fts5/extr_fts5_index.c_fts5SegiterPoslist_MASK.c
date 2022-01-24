#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sCtx ;
struct TYPE_19__ {size_t n; TYPE_2__* p; } ;
struct TYPE_18__ {TYPE_1__* pConfig; int /*<<< orphan*/  rc; } ;
struct TYPE_17__ {size_t nPos; } ;
struct TYPE_16__ {int eState; int /*<<< orphan*/ * pColset; TYPE_6__* pBuf; } ;
struct TYPE_15__ {int /*<<< orphan*/ * pColset; TYPE_6__* pBuf; } ;
struct TYPE_14__ {scalar_t__ eDetail; } ;
typedef  TYPE_2__ PoslistOffsetsCtx ;
typedef  TYPE_3__ PoslistCallbackCtx ;
typedef  TYPE_4__ Fts5SegIter ;
typedef  TYPE_5__ Fts5Index ;
typedef  int /*<<< orphan*/  Fts5Colset ;
typedef  TYPE_6__ Fts5Buffer ;

/* Variables and functions */
 int FTS5_DATA_ZERO_PADDING ; 
 scalar_t__ FTS5_DETAIL_FULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_4__*,void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fts5PoslistCallback ; 
 int /*<<< orphan*/  fts5PoslistFilterCallback ; 
 int /*<<< orphan*/  fts5PoslistOffsetsCallback ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(
  Fts5Index *p,
  Fts5SegIter *pSeg,
  Fts5Colset *pColset,
  Fts5Buffer *pBuf
){
  if( 0==FUNC1(&p->rc, pBuf, pSeg->nPos+FTS5_DATA_ZERO_PADDING) ){
    FUNC4(&pBuf->p[pBuf->n+pSeg->nPos], 0, FTS5_DATA_ZERO_PADDING);
    if( pColset==0 ){
      FUNC2(p, pSeg, (void*)pBuf, fts5PoslistCallback);
    }else{
      if( p->pConfig->eDetail==FTS5_DETAIL_FULL ){
        PoslistCallbackCtx sCtx;
        sCtx.pBuf = pBuf;
        sCtx.pColset = pColset;
        sCtx.eState = FUNC3(pColset, 0);
        FUNC0( sCtx.eState==0 || sCtx.eState==1 );
        FUNC2(p, pSeg, (void*)&sCtx, fts5PoslistFilterCallback);
      }else{
        PoslistOffsetsCtx sCtx;
        FUNC4(&sCtx, 0, sizeof(sCtx));
        sCtx.pBuf = pBuf;
        sCtx.pColset = pColset;
        FUNC2(p, pSeg, (void*)&sCtx, fts5PoslistOffsetsCallback);
      }
    }
  }
}