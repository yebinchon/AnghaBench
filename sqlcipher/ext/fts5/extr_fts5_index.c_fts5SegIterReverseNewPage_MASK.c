#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_16__ {scalar_t__ szLeaf; scalar_t__ nn; int /*<<< orphan*/ * p; } ;
struct TYPE_15__ {scalar_t__ rc; } ;
struct TYPE_14__ {int flags; scalar_t__ iLeafPgno; scalar_t__ iTermLeafPgno; scalar_t__ iTermLeafOffset; int iLeafOffset; TYPE_4__* pLeaf; scalar_t__ iEndofDoclist; int /*<<< orphan*/  iRowid; TYPE_1__* pSeg; } ;
struct TYPE_13__ {int /*<<< orphan*/  iSegid; } ;
typedef  TYPE_2__ Fts5SegIter ;
typedef  TYPE_3__ Fts5Index ;
typedef  TYPE_4__ Fts5Data ;

/* Variables and functions */
 int FTS5_SEGITER_ONETERM ; 
 int FTS5_SEGITER_REVERSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(Fts5Index *p, Fts5SegIter *pIter){
  FUNC1( pIter->flags & FTS5_SEGITER_REVERSE );
  FUNC1( pIter->flags & FTS5_SEGITER_ONETERM );

  FUNC3(pIter->pLeaf);
  pIter->pLeaf = 0;
  while( p->rc==SQLITE_OK && pIter->iLeafPgno>pIter->iTermLeafPgno ){
    Fts5Data *pNew;
    pIter->iLeafPgno--;
    pNew = FUNC2(p, FUNC0(
          pIter->pSeg->iSegid, pIter->iLeafPgno
    ));
    if( pNew ){
      /* iTermLeafOffset may be equal to szLeaf if the term is the last
      ** thing on the page - i.e. the first rowid is on the following page.
      ** In this case leave pIter->pLeaf==0, this iterator is at EOF. */
      if( pIter->iLeafPgno==pIter->iTermLeafPgno ){
        FUNC1( pIter->pLeaf==0 );
        if( pIter->iTermLeafOffset<pNew->szLeaf ){
          pIter->pLeaf = pNew;
          pIter->iLeafOffset = pIter->iTermLeafOffset;
        }
      }else{
        int iRowidOff;
        iRowidOff = FUNC5(pNew);
        if( iRowidOff ){
          pIter->pLeaf = pNew;
          pIter->iLeafOffset = iRowidOff;
        }
      }

      if( pIter->pLeaf ){
        u8 *a = &pIter->pLeaf->p[pIter->iLeafOffset];
        pIter->iLeafOffset += FUNC4(a, (u64*)&pIter->iRowid);
        break;
      }else{
        FUNC3(pNew);
      }
    }
  }

  if( pIter->pLeaf ){
    pIter->iEndofDoclist = pIter->pLeaf->nn+1;
    FUNC6(p, pIter);
  }
}