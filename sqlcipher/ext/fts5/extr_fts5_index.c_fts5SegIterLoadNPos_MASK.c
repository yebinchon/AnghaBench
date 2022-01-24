#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__* p; int /*<<< orphan*/  szLeaf; } ;
struct TYPE_9__ {scalar_t__ rc; TYPE_1__* pConfig; } ;
struct TYPE_8__ {int iLeafOffset; int bDel; int nPos; TYPE_6__* pLeaf; int /*<<< orphan*/  iEndofDoclist; } ;
struct TYPE_7__ {scalar_t__ eDetail; } ;
typedef  TYPE_2__ Fts5SegIter ;
typedef  TYPE_3__ Fts5Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 scalar_t__ FTS5_DETAIL_NONE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int,int) ; 

__attribute__((used)) static void FUNC4(Fts5Index *p, Fts5SegIter *pIter){
  if( p->rc==SQLITE_OK ){
    int iOff = pIter->iLeafOffset;  /* Offset to read at */
    FUNC0(pIter->pLeaf);
    if( p->pConfig->eDetail==FTS5_DETAIL_NONE ){
      int iEod = FUNC1(pIter->iEndofDoclist, pIter->pLeaf->szLeaf);
      pIter->bDel = 0;
      pIter->nPos = 1;
      if( iOff<iEod && pIter->pLeaf->p[iOff]==0 ){
        pIter->bDel = 1;
        iOff++;
        if( iOff<iEod && pIter->pLeaf->p[iOff]==0 ){
          pIter->nPos = 1;
          iOff++;
        }else{
          pIter->nPos = 0;
        }
      }
    }else{
      int nSz;
      FUNC3(pIter->pLeaf->p, iOff, nSz);
      pIter->bDel = (nSz & 0x0001);
      pIter->nPos = nSz>>1;
      FUNC2( pIter->nPos>=0 );
    }
    pIter->iLeafOffset = iOff;
  }
}