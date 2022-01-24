#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  scalar_t__ i16 ;
typedef  int /*<<< orphan*/  Vdbe ;
typedef  int /*<<< orphan*/  Trigger ;
struct TYPE_22__ {int nCol; scalar_t__ pSelect; int /*<<< orphan*/  zName; } ;
typedef  TYPE_1__ Table ;
struct TYPE_23__ {int nMem; scalar_t__ nested; int /*<<< orphan*/ * pVdbe; } ;
typedef  TYPE_2__ Parse ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int) ; 
 scalar_t__ ONEPASS_MULTI ; 
 scalar_t__ ONEPASS_OFF ; 
 scalar_t__ OPFLAG_AUXDELETE ; 
 int OPFLAG_NCHANGE ; 
 scalar_t__ OPFLAG_SAVEPOSITION ; 
 int /*<<< orphan*/  OP_Copy ; 
 int /*<<< orphan*/  OP_Delete ; 
 scalar_t__ OP_NotExists ; 
 scalar_t__ OP_NotFound ; 
 int /*<<< orphan*/  P4_TABLE ; 
 int /*<<< orphan*/  TK_DELETE ; 
 int TRIGGER_AFTER ; 
 int TRIGGER_BEFORE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 

void FUNC23(
  Parse *pParse,     /* Parsing context */
  Table *pTab,       /* Table containing the row to be deleted */
  Trigger *pTrigger, /* List of triggers to (potentially) fire */
  int iDataCur,      /* Cursor from which column data is extracted */
  int iIdxCur,       /* First index cursor */
  int iPk,           /* First memory cell containing the PRIMARY KEY */
  i16 nPk,           /* Number of PRIMARY KEY memory cells */
  u8 count,          /* If non-zero, increment the row change counter */
  u8 onconf,         /* Default ON CONFLICT policy for triggers */
  u8 eMode,          /* ONEPASS_OFF, _SINGLE, or _MULTI.  See above */
  int iIdxNoSeek     /* Cursor number of cursor that does not need seeking */
){
  Vdbe *v = pParse->pVdbe;        /* Vdbe */
  int iOld = 0;                   /* First register in OLD.* array */
  int iLabel;                     /* Label resolved to end of generated code */
  u8 opSeek;                      /* Seek opcode */

  /* Vdbe is guaranteed to have been allocated by this stage. */
  FUNC4( v );
  FUNC3((v, "BEGIN: GenRowDel(%d,%d,%d,%d)",
                         iDataCur, iIdxCur, iPk, (int)nPk));

  /* Seek cursor iCur to the row to delete. If this row no longer exists 
  ** (this can happen if a trigger program has already deleted it), do
  ** not attempt to delete it or fire any DELETE triggers.  */
  iLabel = FUNC19(pParse);
  opSeek = FUNC0(pTab) ? OP_NotExists : OP_NotFound;
  if( eMode==ONEPASS_OFF ){
    FUNC15(v, opSeek, iDataCur, iLabel, iPk, nPk);
    FUNC2(v, opSeek==OP_NotExists);
    FUNC2(v, opSeek==OP_NotFound);
  }
 
  /* If there are any triggers to fire, allocate a range of registers to
  ** use for the old.* references in the triggers.  */
  if( FUNC10(pParse, pTab, 0, 0) || pTrigger ){
    u32 mask;                     /* Mask of OLD.* columns in use */
    int iCol;                     /* Iterator used while populating OLD.* */
    int addrStart;                /* Start of BEFORE trigger programs */

    /* TODO: Could use temporary registers here. Also could attempt to
    ** avoid copying the contents of the rowid register.  */
    mask = FUNC12(
        pParse, pTrigger, 0, 0, TRIGGER_BEFORE|TRIGGER_AFTER, pTab, onconf
    );
    mask |= FUNC9(pParse, pTab);
    iOld = pParse->nMem+1;
    pParse->nMem += (1 + pTab->nCol);

    /* Populate the OLD.* pseudo-table register array. These values will be 
    ** used by any BEFORE and AFTER triggers that exist.  */
    FUNC14(v, OP_Copy, iPk, iOld);
    for(iCol=0; iCol<pTab->nCol; iCol++){
      FUNC22( mask!=0xffffffff && iCol==31 );
      FUNC22( mask!=0xffffffff && iCol==32 );
      if( mask==0xffffffff || (iCol<=31 && (mask & FUNC1(iCol))!=0) ){
        FUNC6(v, pTab, iDataCur, iCol, iOld+iCol+1);
      }
    }

    /* Invoke BEFORE DELETE trigger programs. */
    addrStart = FUNC18(v);
    FUNC5(pParse, pTrigger, 
        TK_DELETE, 0, TRIGGER_BEFORE, pTab, iOld, onconf, iLabel
    );

    /* If any BEFORE triggers were coded, then seek the cursor to the 
    ** row to be deleted again. It may be that the BEFORE triggers moved
    ** the cursor or already deleted the row that the cursor was
    ** pointing to.
    **
    ** Also disable the iIdxNoSeek optimization since the BEFORE trigger
    ** may have moved that cursor.
    */
    if( addrStart<FUNC18(v) ){
      FUNC15(v, opSeek, iDataCur, iLabel, iPk, nPk);
      FUNC2(v, opSeek==OP_NotExists);
      FUNC2(v, opSeek==OP_NotFound);
      FUNC22( iIdxNoSeek>=0 );
      iIdxNoSeek = -1;
    }

    /* Do FK processing. This call checks that any FK constraints that
    ** refer to this table (i.e. constraints attached to other tables) 
    ** are not violated by deleting this row.  */
    FUNC8(pParse, pTab, iOld, 0, 0, 0);
  }

  /* Delete the index and table entries. Skip this step if pTab is really
  ** a view (in which case the only effect of the DELETE statement is to
  ** fire the INSTEAD OF triggers).  
  **
  ** If variable 'count' is non-zero, then this OP_Delete instruction should
  ** invoke the update-hook. The pre-update-hook, on the other hand should
  ** be invoked unless table pTab is a system table. The difference is that
  ** the update-hook is not invoked for rows removed by REPLACE, but the 
  ** pre-update-hook is.
  */ 
  if( pTab->pSelect==0 ){
    u8 p5 = 0;
    FUNC11(pParse, pTab, iDataCur, iIdxCur,0,iIdxNoSeek);
    FUNC14(v, OP_Delete, iDataCur, (count?OPFLAG_NCHANGE:0));
    if( pParse->nested==0 || 0==FUNC21(pTab->zName, "sqlite_stat1") ){
      FUNC16(v, (char*)pTab, P4_TABLE);
    }
    if( eMode!=ONEPASS_OFF ){
      FUNC17(v, OPFLAG_AUXDELETE);
    }
    if( iIdxNoSeek>=0 && iIdxNoSeek!=iDataCur ){
      FUNC13(v, OP_Delete, iIdxNoSeek);
    }
    if( eMode==ONEPASS_MULTI ) p5 |= OPFLAG_SAVEPOSITION;
    FUNC17(v, p5);
  }

  /* Do any ON CASCADE, SET NULL or SET DEFAULT operations required to
  ** handle rows (possibly in other tables) that refer via a foreign key
  ** to the row just deleted. */ 
  FUNC7(pParse, pTab, 0, iOld, 0, 0);

  /* Invoke AFTER DELETE trigger programs. */
  FUNC5(pParse, pTrigger, 
      TK_DELETE, 0, TRIGGER_AFTER, pTab, iOld, onconf, iLabel
  );

  /* Jump here if the row had already been deleted before any BEFORE
  ** trigger programs were invoked. Or if a trigger program throws a 
  ** RAISE(IGNORE) exception.  */
  FUNC20(v, iLabel);
  FUNC3((v, "END: GenRowDel()"));
}