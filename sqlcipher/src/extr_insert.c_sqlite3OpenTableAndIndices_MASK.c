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

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_15__ {scalar_t__ pSchema; TYPE_3__* pIndex; int /*<<< orphan*/  zName; int /*<<< orphan*/  tnum; } ;
typedef  TYPE_1__ Table ;
struct TYPE_17__ {scalar_t__ pSchema; int /*<<< orphan*/  zName; int /*<<< orphan*/  tnum; struct TYPE_17__* pNext; } ;
struct TYPE_16__ {int nTab; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ Index ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int OP_OpenRead ; 
 int OP_OpenWrite ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,TYPE_1__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_3__*) ; 

int FUNC12(
  Parse *pParse,   /* Parsing context */
  Table *pTab,     /* Table to be opened */
  int op,          /* OP_OpenRead or OP_OpenWrite */
  u8 p5,           /* P5 value for OP_Open* opcodes (except on WITHOUT ROWID) */
  int iBase,       /* Use this for the table cursor, if there is one */
  u8 *aToOpen,     /* If not NULL: boolean for each table and index */
  int *piDataCur,  /* Write the database source cursor number here */
  int *piIdxCur    /* Write the first index cursor number here */
){
  int i;
  int iDb;
  int iDataCur;
  Index *pIdx;
  Vdbe *v;

  FUNC4( op==OP_OpenRead || op==OP_OpenWrite );
  FUNC4( op==OP_OpenWrite || p5==0 );
  if( FUNC2(pTab) ){
    /* This routine is a no-op for virtual tables. Leave the output
    ** variables *piDataCur and *piIdxCur uninitialized so that valgrind
    ** can detect if they are used by mistake in the caller. */
    return 0;
  }
  iDb = FUNC7(pParse->db, pTab->pSchema);
  v = FUNC5(pParse);
  FUNC4( v!=0 );
  if( iBase<0 ) iBase = pParse->nTab;
  iDataCur = iBase++;
  if( piDataCur ) *piDataCur = iDataCur;
  if( FUNC0(pTab) && (aToOpen==0 || aToOpen[0]) ){
    FUNC6(pParse, iDataCur, iDb, pTab, op);
  }else{
    FUNC8(pParse, iDb, pTab->tnum, op==OP_OpenWrite, pTab->zName);
  }
  if( piIdxCur ) *piIdxCur = iBase;
  for(i=0, pIdx=pTab->pIndex; pIdx; pIdx=pIdx->pNext, i++){
    int iIdxCur = iBase++;
    FUNC4( pIdx->pSchema==pTab->pSchema );
    if( FUNC1(pIdx) && !FUNC0(pTab) ){
      if( piDataCur ) *piDataCur = iIdxCur;
      p5 = 0;
    }
    if( aToOpen==0 || aToOpen[i+1] ){
      FUNC9(v, op, iIdxCur, pIdx->tnum, iDb);
      FUNC11(pParse, pIdx);
      FUNC10(v, p5);
      FUNC3((v, "%s", pIdx->zName));
    }
  }
  if( iBase>pParse->nTab ) pParse->nTab = iBase;
  return i;
}