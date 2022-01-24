#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_13__ {TYPE_3__* pIndex; } ;
typedef  TYPE_1__ Table ;
struct TYPE_15__ {int /*<<< orphan*/  nColumn; int /*<<< orphan*/  nKeyCol; scalar_t__ uniqNotNull; int /*<<< orphan*/  zName; struct TYPE_15__* pNext; } ;
struct TYPE_14__ {int /*<<< orphan*/ * pVdbe; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ Index ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  OP_IdxDelete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ ,int,int*,TYPE_3__*,int) ; 
 TYPE_3__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

void FUNC7(
  Parse *pParse,     /* Parsing and code generating context */
  Table *pTab,       /* Table containing the row to be deleted */
  int iDataCur,      /* Cursor of table holding data. */
  int iIdxCur,       /* First index cursor */
  int *aRegIdx,      /* Only delete if aRegIdx!=0 && aRegIdx[i]>0 */
  int iIdxNoSeek     /* Do not delete from this cursor */
){
  int i;             /* Index loop counter */
  int r1 = -1;       /* Register holding an index key */
  int iPartIdxLabel; /* Jump destination for skipping partial index entries */
  Index *pIdx;       /* Current index */
  Index *pPrior = 0; /* Prior index */
  Vdbe *v;           /* The prepared statement under construction */
  Index *pPk;        /* PRIMARY KEY index, or NULL for rowid tables */

  v = pParse->pVdbe;
  pPk = FUNC0(pTab) ? 0 : FUNC4(pTab);
  for(i=0, pIdx=pTab->pIndex; pIdx; i++, pIdx=pIdx->pNext){
    FUNC2( iIdxCur+i!=iDataCur || pPk==pIdx );
    if( aRegIdx!=0 && aRegIdx[i]==0 ) continue;
    if( pIdx==pPk ) continue;
    if( iIdxCur+i==iIdxNoSeek ) continue;
    FUNC1((v, "GenRowIdxDel for %s", pIdx->zName));
    r1 = FUNC3(pParse, pIdx, iDataCur, 0, 1,
        &iPartIdxLabel, pPrior, r1);
    FUNC6(v, OP_IdxDelete, iIdxCur+i, r1,
        pIdx->uniqNotNull ? pIdx->nKeyCol : pIdx->nColumn);
    FUNC5(pParse, iPartIdxLabel);
    pPrior = pIdx;
  }
}