#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int flags; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_15__ {scalar_t__ pSelect; TYPE_4__* pFKey; } ;
typedef  TYPE_2__ Table ;
struct TYPE_17__ {scalar_t__ isDeferred; struct TYPE_17__* pNextFrom; } ;
struct TYPE_16__ {int disableTriggers; TYPE_1__* db; } ;
typedef  int /*<<< orphan*/  SrcList ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ FKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  OE_Abort ; 
 int /*<<< orphan*/  OP_FkIfZero ; 
 int /*<<< orphan*/  P4_STATIC ; 
 int /*<<< orphan*/  P5_ConstraintFK ; 
 int /*<<< orphan*/  SQLITE_CONSTRAINT_FOREIGNKEY ; 
 int SQLITE_DeferFKs ; 
 int SQLITE_ForeignKeys ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC13(Parse *pParse, SrcList *pName, Table *pTab){
  sqlite3 *db = pParse->db;
  if( (db->flags&SQLITE_ForeignKeys) && !FUNC0(pTab) ){
    int iSkip = 0;
    Vdbe *v = FUNC5(pParse);

    FUNC2( *v );                  /* VDBE has already been allocated */
    FUNC2( pTab->pSelect==0 );   /* Not a view */
    if( FUNC4(pTab)==0 ){
      /* Search for a deferred foreign key constraint for which this table
      ** is the child table. If one cannot be found, return without 
      ** generating any VDBE code. If one can be found, then jump over
      ** the entire DELETE if there are no outstanding deferred constraints
      ** when this statement is run.  */
      FKey *p;
      for(p=pTab->pFKey; p; p=p->pNextFrom){
        if( p->isDeferred || (db->flags & SQLITE_DeferFKs) ) break;
      }
      if( !p ) return;
      iSkip = FUNC10(pParse);
      FUNC8(v, OP_FkIfZero, 1, iSkip); FUNC1(v);
    }

    pParse->disableTriggers = 1;
    FUNC3(pParse, FUNC7(db, pName, 0), 0, 0, 0);
    pParse->disableTriggers = 0;

    /* If the DELETE has generated immediate foreign key constraint 
    ** violations, halt the VDBE and return an error at this point, before
    ** any modifications to the schema are made. This is because statement
    ** transactions are not able to rollback schema changes.  
    **
    ** If the SQLITE_DeferFKs flag is set, then this is not required, as
    ** the statement transaction will not be rolled back even if FK
    ** constraints are violated.
    */
    if( (db->flags & SQLITE_DeferFKs)==0 ){
      FUNC12(v, OE_Abort);
      FUNC8(v, OP_FkIfZero, 0, FUNC9(v)+2);
      FUNC1(v);
      FUNC6(pParse, SQLITE_CONSTRAINT_FOREIGNKEY,
          OE_Abort, 0, P4_STATIC, P5_ConstraintFK);
    }

    if( iSkip ){
      FUNC11(v, iSkip);
    }
  }
}