#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ i64 ;
struct TYPE_11__ {int nn; int /*<<< orphan*/ * p; } ;
struct TYPE_10__ {scalar_t__ rc; TYPE_1__* pConfig; } ;
struct TYPE_9__ {int nCol; } ;
typedef  TYPE_2__ Fts5Index ;
typedef  TYPE_3__ Fts5Data ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_AVERAGES_ROWID ; 
 scalar_t__ SQLITE_OK ; 
 TYPE_3__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

int FUNC5(Fts5Index *p, i64 *pnRow, i64 *anSize){
  int nCol = p->pConfig->nCol;
  Fts5Data *pData;

  *pnRow = 0;
  FUNC4(anSize, 0, sizeof(i64) * nCol);
  pData = FUNC0(p, FTS5_AVERAGES_ROWID);
  if( p->rc==SQLITE_OK && pData->nn ){
    int i = 0;
    int iCol;
    i += FUNC2(&pData->p[i], (u64*)pnRow);
    for(iCol=0; i<pData->nn && iCol<nCol; iCol++){
      i += FUNC2(&pData->p[i], (u64*)&anSize[iCol]);
    }
  }

  FUNC1(pData);
  return FUNC3(p);
}