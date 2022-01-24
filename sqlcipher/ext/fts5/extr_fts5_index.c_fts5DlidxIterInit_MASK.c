#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_17__ {int nLvl; int iSegid; TYPE_2__* aLvl; } ;
struct TYPE_16__ {TYPE_12__* pData; } ;
struct TYPE_15__ {scalar_t__ rc; } ;
struct TYPE_14__ {int* p; } ;
typedef  TYPE_1__ Fts5Index ;
typedef  TYPE_2__ Fts5DlidxLvl ;
typedef  TYPE_3__ Fts5DlidxIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 scalar_t__ SQLITE_NOMEM ; 
 scalar_t__ SQLITE_OK ; 
 TYPE_12__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int) ; 

__attribute__((used)) static Fts5DlidxIter *FUNC7(
  Fts5Index *p,                   /* Fts5 Backend to iterate within */
  int bRev,                       /* True for ORDER BY ASC */
  int iSegid,                     /* Segment id */
  int iLeafPg                     /* Leaf page number to load dlidx for */
){
  Fts5DlidxIter *pIter = 0;
  int i;
  int bDone = 0;

  for(i=0; p->rc==SQLITE_OK && bDone==0; i++){
    sqlite3_int64 nByte = sizeof(Fts5DlidxIter) + i * sizeof(Fts5DlidxLvl);
    Fts5DlidxIter *pNew;

    pNew = (Fts5DlidxIter*)FUNC6(pIter, nByte);
    if( pNew==0 ){
      p->rc = SQLITE_NOMEM;
    }else{
      i64 iRowid = FUNC0(iSegid, i, iLeafPg);
      Fts5DlidxLvl *pLvl = &pNew->aLvl[i];
      pIter = pNew;
      FUNC5(pLvl, 0, sizeof(Fts5DlidxLvl));
      pLvl->pData = FUNC1(p, iRowid);
      if( pLvl->pData && (pLvl->pData->p[0] & 0x0001)==0 ){
        bDone = 1;
      }
      pIter->nLvl = i+1;
    }
  }

  if( p->rc==SQLITE_OK ){
    pIter->iSegid = iSegid;
    if( bRev==0 ){
      FUNC2(pIter);
    }else{
      FUNC4(p, pIter);
    }
  }

  if( p->rc!=SQLITE_OK ){
    FUNC3(pIter);
    pIter = 0;
  }

  return pIter;
}