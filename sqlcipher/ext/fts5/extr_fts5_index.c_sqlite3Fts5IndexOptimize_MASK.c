#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ rc; } ;
struct TYPE_19__ {scalar_t__ nSegment; TYPE_1__* aLevel; } ;
struct TYPE_18__ {scalar_t__ nSeg; } ;
typedef  TYPE_2__ Fts5Structure ;
typedef  TYPE_3__ Fts5Index ;

/* Variables and functions */
 int FTS5_OPT_WORK_UNIT ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__**,int,int*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_2__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_2__*) ; 

int FUNC9(Fts5Index *p){
  Fts5Structure *pStruct;
  Fts5Structure *pNew = 0;

  FUNC0( p->rc==SQLITE_OK );
  FUNC1(p);
  pStruct = FUNC6(p);
  FUNC5(p);

  if( pStruct ){
    pNew = FUNC3(p, pStruct);
  }
  FUNC7(pStruct);

  FUNC0( pNew==0 || pNew->nSegment>0 );
  if( pNew ){
    int iLvl;
    for(iLvl=0; pNew->aLevel[iLvl].nSeg==0; iLvl++){}
    while( p->rc==SQLITE_OK && pNew->aLevel[iLvl].nSeg>0 ){
      int nRem = FTS5_OPT_WORK_UNIT;
      FUNC2(p, &pNew, iLvl, &nRem);
    }

    FUNC8(p, pNew);
    FUNC7(pNew);
  }

  return FUNC4(p); 
}