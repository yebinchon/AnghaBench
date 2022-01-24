#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_14__ {scalar_t__ rc; } ;
struct TYPE_13__ {int iLeafPgno; int iLeafOffset; int /*<<< orphan*/  iRowid; TYPE_10__* pLeaf; scalar_t__ pNextLeaf; TYPE_1__* pSeg; } ;
struct TYPE_12__ {int pgnoLast; } ;
struct TYPE_11__ {int szLeaf; int /*<<< orphan*/ * p; } ;
typedef  TYPE_2__ Fts5SegIter ;
typedef  TYPE_3__ Fts5Index ;

/* Variables and functions */
 void* FTS5_CORRUPT ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(
  Fts5Index *p,                   /* FTS5 backend object */
  Fts5SegIter *pIter,             /* Iterator to advance */
  int iLeafPgno
){
  FUNC0( iLeafPgno>pIter->iLeafPgno );

  if( iLeafPgno>pIter->pSeg->pgnoLast ){
    p->rc = FTS5_CORRUPT;
  }else{
    FUNC1(pIter->pNextLeaf);
    pIter->pNextLeaf = 0;
    pIter->iLeafPgno = iLeafPgno-1;
    FUNC5(p, pIter);
    FUNC0( p->rc!=SQLITE_OK || pIter->iLeafPgno==iLeafPgno );

    if( p->rc==SQLITE_OK ){
      int iOff;
      u8 *a = pIter->pLeaf->p;
      int n = pIter->pLeaf->szLeaf;

      iOff = FUNC3(pIter->pLeaf);
      if( iOff<4 || iOff>=n ){
        p->rc = FTS5_CORRUPT;
      }else{
        iOff += FUNC2(&a[iOff], (u64*)&pIter->iRowid);
        pIter->iLeafOffset = iOff;
        FUNC4(p, pIter);
      }
    }
  }
}