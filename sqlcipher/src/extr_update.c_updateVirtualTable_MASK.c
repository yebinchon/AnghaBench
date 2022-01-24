#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int i16 ;
typedef  int /*<<< orphan*/  WhereInfo ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_25__ {int nCol; } ;
typedef  TYPE_3__ Table ;
struct TYPE_29__ {TYPE_2__* a; } ;
struct TYPE_28__ {int nKeyCol; int* aiColumn; } ;
struct TYPE_27__ {int nMem; int /*<<< orphan*/  nTab; int /*<<< orphan*/ * db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_26__ {TYPE_1__* a; } ;
struct TYPE_24__ {int /*<<< orphan*/ * pExpr; } ;
struct TYPE_23__ {int iCursor; } ;
typedef  TYPE_4__ SrcList ;
typedef  TYPE_5__ Parse ;
typedef  TYPE_6__ Index ;
typedef  TYPE_7__ ExprList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int OE_Abort ; 
 int OE_Default ; 
 int ONEPASS_OFF ; 
 int ONEPASS_SINGLE ; 
 int OPFLAG_NOCHNG ; 
 int OPFLAG_NOCHNG_MAGIC ; 
 int /*<<< orphan*/  OP_Close ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_Insert ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  OP_NewRowid ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_OpenEphemeral ; 
 int /*<<< orphan*/  OP_Rewind ; 
 int /*<<< orphan*/  OP_Rowid ; 
 int /*<<< orphan*/  OP_SCopy ; 
 int /*<<< orphan*/  OP_VColumn ; 
 int /*<<< orphan*/  OP_VUpdate ; 
 int /*<<< orphan*/  P4_VTAB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WHERE_ONEPASS_DESIRED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 TYPE_6__* FUNC7 (TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC19(
  Parse *pParse,       /* The parsing context */
  SrcList *pSrc,       /* The virtual table to be modified */
  Table *pTab,         /* The virtual table */
  ExprList *pChanges,  /* The columns to change in the UPDATE statement */
  Expr *pRowid,        /* Expression used to recompute the rowid */
  int *aXRef,          /* Mapping from columns of pTab to entries in pChanges */
  Expr *pWhere,        /* WHERE clause of the UPDATE statement */
  int onError          /* ON CONFLICT strategy */
){
  Vdbe *v = pParse->pVdbe;  /* Virtual machine under construction */
  int ephemTab;             /* Table holding the result of the SELECT */
  int i;                    /* Loop counter */
  sqlite3 *db = pParse->db; /* Database connection */
  const char *pVTab = (const char*)FUNC4(db, pTab);
  WhereInfo *pWInfo;
  int nArg = 2 + pTab->nCol;      /* Number of arguments to VUpdate */
  int regArg;                     /* First register in VUpdate arg array */
  int regRec;                     /* Register in which to assemble record */
  int regRowid;                   /* Register for ephem table rowid */
  int iCsr = pSrc->a[0].iCursor;  /* Cursor used for virtual table scan */
  int aDummy[2];                  /* Unused arg for sqlite3WhereOkOnePass() */
  int eOnePass;                   /* True to use onepass strategy */
  int addr;                       /* Address of OP_OpenEphemeral */

  /* Allocate nArg registers in which to gather the arguments for VUpdate. Then
  ** create and open the ephemeral table in which the records created from
  ** these arguments will be temporarily stored. */
  FUNC2( *v );
  ephemTab = pParse->nTab++;
  addr= FUNC9(v, OP_OpenEphemeral, ephemTab, nArg);
  regArg = pParse->nMem + 1;
  pParse->nMem += nArg;
  regRec = ++pParse->nMem;
  regRowid = ++pParse->nMem;

  /* Start scanning the virtual table */
  pWInfo = FUNC16(pParse, pSrc, pWhere, 0,0,WHERE_ONEPASS_DESIRED,0);
  if( pWInfo==0 ) return;

  /* Populate the argument registers. */
  for(i=0; i<pTab->nCol; i++){
    if( aXRef[i]>=0 ){
      FUNC3(pParse, pChanges->a[aXRef[i]].pExpr, regArg+2+i);
    }else{
      FUNC10(v, OP_VColumn, iCsr, i, regArg+2+i);
      FUNC12(v, OPFLAG_NOCHNG);/* Enable sqlite3_vtab_nochange() */
    }
  }
  if( FUNC0(pTab) ){
    FUNC9(v, OP_Rowid, iCsr, regArg);
    if( pRowid ){
      FUNC3(pParse, pRowid, regArg+1);
    }else{
      FUNC9(v, OP_Rowid, iCsr, regArg+1);
    }
  }else{
    Index *pPk;   /* PRIMARY KEY index */
    i16 iPk;      /* PRIMARY KEY column */
    pPk = FUNC7(pTab);
    FUNC2( pPk!=0 );
    FUNC2( pPk->nKeyCol==1 );
    iPk = pPk->aiColumn[0];
    FUNC10(v, OP_VColumn, iCsr, iPk, regArg);
    FUNC9(v, OP_SCopy, regArg+2+iPk, regArg+1);
  }

  eOnePass = FUNC18(pWInfo, aDummy);

  /* There is no ONEPASS_MULTI on virtual tables */
  FUNC2( eOnePass==ONEPASS_OFF || eOnePass==ONEPASS_SINGLE );

  if( eOnePass ){
    /* If using the onepass strategy, no-op out the OP_OpenEphemeral coded
    ** above. */
    FUNC13(v, addr);
    FUNC8(v, OP_Close, iCsr);
  }else{
    /* Create a record from the argument register contents and insert it into
    ** the ephemeral table. */
    FUNC6(pParse);
    FUNC10(v, OP_MakeRecord, regArg, nArg, regRec);
#ifdef SQLITE_DEBUG
    /* Signal an assert() within OP_MakeRecord that it is allowed to
    ** accept no-change records with serial_type 10 */
    sqlite3VdbeChangeP5(v, OPFLAG_NOCHNG_MAGIC);
#endif
    FUNC9(v, OP_NewRowid, ephemTab, regRowid);
    FUNC10(v, OP_Insert, ephemTab, regRec, regRowid);
  }


  if( eOnePass==ONEPASS_OFF ){
    /* End the virtual table scan */
    FUNC17(pWInfo);

    /* Begin scannning through the ephemeral table. */
    addr = FUNC8(v, OP_Rewind, ephemTab); FUNC1(v);

    /* Extract arguments from the current row of the ephemeral table and 
    ** invoke the VUpdate method.  */
    for(i=0; i<nArg; i++){
      FUNC10(v, OP_Column, ephemTab, i, regArg+i);
    }
  }
  FUNC15(pParse, pTab);
  FUNC11(v, OP_VUpdate, 0, nArg, regArg, pVTab, P4_VTAB);
  FUNC12(v, onError==OE_Default ? OE_Abort : onError);
  FUNC5(pParse);

  /* End of the ephemeral table scan. Or, if using the onepass strategy,
  ** jump to here if the scan visited zero rows. */
  if( eOnePass==ONEPASS_OFF ){
    FUNC9(v, OP_Next, ephemTab, addr+1); FUNC1(v);
    FUNC14(v, addr);
    FUNC9(v, OP_Close, ephemTab, 0);
  }else{
    FUNC17(pWInfo);
  }
}