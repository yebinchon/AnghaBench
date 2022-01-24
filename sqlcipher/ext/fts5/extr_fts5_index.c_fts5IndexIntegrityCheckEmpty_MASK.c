#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ rc; } ;
struct TYPE_6__ {int /*<<< orphan*/  iSegid; } ;
typedef  TYPE_1__ Fts5StructureSegment ;
typedef  TYPE_2__ Fts5Index ;
typedef  int /*<<< orphan*/  Fts5Data ;

/* Variables and functions */
 void* FTS5_CORRUPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
  Fts5Index *p,
  Fts5StructureSegment *pSeg,     /* Segment to check internal consistency */
  int iFirst,
  int iNoRowid,
  int iLast
){
  int i;

  /* Now check that the iter.nEmpty leaves following the current leaf
  ** (a) exist and (b) contain no terms. */
  for(i=iFirst; p->rc==SQLITE_OK && i<=iLast; i++){
    Fts5Data *pLeaf = FUNC1(p, FUNC0(pSeg->iSegid, i));
    if( pLeaf ){
      if( !FUNC4(pLeaf) ) p->rc = FTS5_CORRUPT;
      if( i>=iNoRowid && 0!=FUNC3(pLeaf) ) p->rc = FTS5_CORRUPT;
    }
    FUNC2(pLeaf);
  }
}