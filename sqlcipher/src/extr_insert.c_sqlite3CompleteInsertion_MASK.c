#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_14__ {scalar_t__ pSelect; int nCol; TYPE_3__* pIndex; } ;
typedef  TYPE_1__ Table ;
struct TYPE_16__ {int /*<<< orphan*/  nColumn; int /*<<< orphan*/  nKeyCol; scalar_t__ uniqNotNull; scalar_t__ pPartIdxWhere; struct TYPE_16__* pNext; } ;
struct TYPE_15__ {scalar_t__ nested; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int OPFLAG_APPEND ; 
 int OPFLAG_ISNOOP ; 
 int OPFLAG_ISUPDATE ; 
 int OPFLAG_LASTROWID ; 
 int OPFLAG_NCHANGE ; 
 int OPFLAG_SAVEPOSITION ; 
 int OPFLAG_USESEEKRESULT ; 
 int /*<<< orphan*/  OP_IdxInsert ; 
 int /*<<< orphan*/  OP_Insert ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_IsNull ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  P4_TABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(
  Parse *pParse,      /* The parser context */
  Table *pTab,        /* the table into which we are inserting */
  int iDataCur,       /* Cursor of the canonical data source */
  int iIdxCur,        /* First index cursor */
  int regNewData,     /* Range of content */
  int *aRegIdx,       /* Register used by each index.  0 for unused indices */
  int update_flags,   /* True for UPDATE, False for INSERT */
  int appendBias,     /* True if this is likely to be an append */
  int useSeekResult   /* True to set the USESEEKRESULT flag on OP_[Idx]Insert */
){
  Vdbe *v;            /* Prepared statements under construction */
  Index *pIdx;        /* An index being inserted or updated */
  u8 pik_flags;       /* flag values passed to the btree insert */
  int regData;        /* Content registers (after the rowid) */
  int regRec;         /* Register holding assembled record for the table */
  int i;              /* Loop counter */
  u8 bAffinityDone = 0; /* True if OP_Affinity has been run already */

  FUNC3( update_flags==0
       || update_flags==OPFLAG_ISUPDATE
       || update_flags==(OPFLAG_ISUPDATE|OPFLAG_SAVEPOSITION)
  );

  v = FUNC5(pParse);
  FUNC3( v!=0 );
  FUNC3( pTab->pSelect==0 );  /* This table is not a VIEW */
  for(i=0, pIdx=pTab->pIndex; pIdx; pIdx=pIdx->pNext, i++){
    if( aRegIdx[i]==0 ) continue;
    bAffinityDone = 1;
    if( pIdx->pPartIdxWhere ){
      FUNC9(v, OP_IsNull, aRegIdx[i], FUNC15(v)+2);
      FUNC2(v);
    }
    pik_flags = (useSeekResult ? OPFLAG_USESEEKRESULT : 0);
    if( FUNC1(pIdx) && !FUNC0(pTab) ){
      FUNC3( pParse->nested==0 );
      pik_flags |= OPFLAG_NCHANGE;
      pik_flags |= (update_flags & OPFLAG_SAVEPOSITION);
#ifdef SQLITE_ENABLE_PREUPDATE_HOOK
      if( update_flags==0 ){
        int r = sqlite3GetTempReg(pParse);
        sqlite3VdbeAddOp2(v, OP_Integer, 0, r);
        sqlite3VdbeAddOp4(v, OP_Insert, 
            iIdxCur+i, aRegIdx[i], r, (char*)pTab, P4_TABLE
        );
        sqlite3VdbeChangeP5(v, OPFLAG_ISNOOP);
        sqlite3ReleaseTempReg(pParse, r);
      }
#endif
    }
    FUNC12(v, OP_IdxInsert, iIdxCur+i, aRegIdx[i],
                         aRegIdx[i]+1,
                         pIdx->uniqNotNull ? pIdx->nKeyCol: pIdx->nColumn);
    FUNC14(v, pik_flags);
  }
  if( !FUNC0(pTab) ) return;
  regData = regNewData + 1;
  regRec = FUNC4(pParse);
  FUNC10(v, OP_MakeRecord, regData, pTab->nCol, regRec);
  FUNC7(v, pTab);
  if( !bAffinityDone ){
    FUNC8(v, pTab, 0);
  }
  if( pParse->nested ){
    pik_flags = 0;
  }else{
    pik_flags = OPFLAG_NCHANGE;
    pik_flags |= (update_flags?update_flags:OPFLAG_LASTROWID);
  }
  if( appendBias ){
    pik_flags |= OPFLAG_APPEND;
  }
  if( useSeekResult ){
    pik_flags |= OPFLAG_USESEEKRESULT;
  }
  FUNC10(v, OP_Insert, iDataCur, regRec, regNewData);
  if( !pParse->nested ){
    FUNC13(v, pTab, P4_TABLE);
  }
  FUNC14(v, pik_flags);
}