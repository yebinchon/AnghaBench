#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_10__ {int szLeaf; int /*<<< orphan*/ * p; } ;
struct TYPE_9__ {scalar_t__ rc; } ;
struct TYPE_8__ {int iLeafOffset; int /*<<< orphan*/  iRowid; TYPE_7__* pLeaf; } ;
typedef  TYPE_1__ Fts5SegIter ;
typedef  TYPE_2__ Fts5Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 scalar_t__ FTS5_CORRUPT ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(Fts5Index *p, Fts5SegIter *pIter){
  u8 *a = pIter->pLeaf->p;        /* Buffer to read data from */
  int iOff = pIter->iLeafOffset;

  FUNC0(pIter->pLeaf);
  if( iOff>=pIter->pLeaf->szLeaf ){
    FUNC1(p, pIter);
    if( pIter->pLeaf==0 ){
      if( p->rc==SQLITE_OK ) p->rc = FTS5_CORRUPT;
      return;
    }
    iOff = 4;
    a = pIter->pLeaf->p;
  }
  iOff += FUNC2(&a[iOff], (u64*)&pIter->iRowid);
  pIter->iLeafOffset = iOff;
}