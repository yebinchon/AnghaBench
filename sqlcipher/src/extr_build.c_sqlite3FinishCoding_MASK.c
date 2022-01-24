#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_11__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ busy; } ;
struct TYPE_21__ {scalar_t__ authLevel; } ;
struct TYPE_26__ {scalar_t__ mallocFailed; int nDb; TYPE_3__ init; TYPE_2__* aDb; TYPE_1__ auth; } ;
typedef  TYPE_6__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_29__ {int nExpr; TYPE_5__* a; } ;
struct TYPE_28__ {scalar_t__ pToplevel; scalar_t__ nErr; scalar_t__ rc; scalar_t__ nTableLock; int nVtabLock; scalar_t__ pAinc; scalar_t__ nTab; scalar_t__ okConstFactor; TYPE_9__* pConstExpr; int /*<<< orphan*/ * apVtabLock; scalar_t__ isMultiWrite; scalar_t__ mayAbort; int /*<<< orphan*/  writeMask; int /*<<< orphan*/  cookieMask; scalar_t__ nested; TYPE_6__* db; } ;
struct TYPE_27__ {int /*<<< orphan*/  iGeneration; int /*<<< orphan*/  schema_cookie; } ;
struct TYPE_24__ {int /*<<< orphan*/  iConstExprReg; } ;
struct TYPE_25__ {TYPE_4__ u; int /*<<< orphan*/  pExpr; } ;
struct TYPE_22__ {TYPE_7__* pSchema; } ;
struct TYPE_20__ {scalar_t__ opcode; } ;
typedef  TYPE_7__ Schema ;
typedef  TYPE_8__ Parse ;
typedef  TYPE_9__ ExprList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OP_Halt ; 
 scalar_t__ OP_Init ; 
 int /*<<< orphan*/  OP_Transaction ; 
 int /*<<< orphan*/  OP_VBegin ; 
 int /*<<< orphan*/  P4_VTAB ; 
 scalar_t__ SQLITE_AUTH_USER ; 
 scalar_t__ SQLITE_DONE ; 
 void* SQLITE_ERROR ; 
 scalar_t__ SQLITE_OK ; 
 scalar_t__ UAUTH_User ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 TYPE_11__* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 

void FUNC21(Parse *pParse){
  sqlite3 *db;
  Vdbe *v;

  FUNC3( pParse->pToplevel==0 );
  db = pParse->db;
  if( pParse->nested ) return;
  if( db->mallocFailed || pParse->nErr ){
    if( pParse->rc==SQLITE_OK ) pParse->rc = SQLITE_ERROR;
    return;
  }

  /* Begin by generating some termination code at the end of the
  ** vdbe program
  */
  v = FUNC9(pParse);
  FUNC3( !pParse->isMultiWrite 
       || FUNC14(v, pParse->mayAbort));
  if( v ){
    FUNC11(v, OP_Halt);

#if SQLITE_USER_AUTHENTICATION
    if( pParse->nTableLock>0 && db->init.busy==0 ){
      sqlite3UserAuthInit(db);
      if( db->auth.authLevel<UAUTH_User ){
        sqlite3ErrorMsg(pParse, "user not authenticated");
        pParse->rc = SQLITE_AUTH_USER;
        return;
      }
    }
#endif

    /* The cookie mask contains one bit for each database file open.
    ** (Bit 0 is for main, bit 1 is for temp, and so forth.)  Bits are
    ** set for each database that is used.  Generate code to start a
    ** transaction on each used database and to verify the schema cookie
    ** on each used database.
    */
    if( db->mallocFailed==0 
     && (FUNC0(pParse->cookieMask) || pParse->pConstExpr)
    ){
      int iDb, i;
      FUNC3( FUNC16(v, 0)->opcode==OP_Init );
      FUNC18(v, 0);
      for(iDb=0; iDb<db->nDb; iDb++){
        Schema *pSchema;
        if( FUNC1(pParse->cookieMask, iDb)==0 ) continue;
        FUNC20(v, iDb);
        pSchema = db->aDb[iDb].pSchema;
        FUNC13(v,
          OP_Transaction,                    /* Opcode */
          iDb,                               /* P1 */
          FUNC1(pParse->writeMask,iDb), /* P2 */
          pSchema->schema_cookie,            /* P3 */
          pSchema->iGeneration               /* P4 */
        );
        if( db->init.busy==0 ) FUNC15(v, 1);
        FUNC2((v,
              "usesStmtJournal=%d", pParse->mayAbort && pParse->isMultiWrite));
      }
#ifndef SQLITE_OMIT_VIRTUALTABLE
      for(i=0; i<pParse->nVtabLock; i++){
        char *vtab = (char *)FUNC8(db, pParse->apVtabLock[i]);
        FUNC12(v, OP_VBegin, 0, 0, 0, vtab, P4_VTAB);
      }
      pParse->nVtabLock = 0;
#endif

      /* Once all the cookies have been verified and transactions opened, 
      ** obtain the required table-locks. This is a no-op unless the 
      ** shared-cache feature is enabled.
      */
      FUNC4(pParse);

      /* Initialize any AUTOINCREMENT data structures required.
      */
      FUNC5(pParse);

      /* Code constant expressions that where factored out of inner loops */
      if( pParse->pConstExpr ){
        ExprList *pEL = pParse->pConstExpr;
        pParse->okConstFactor = 0;
        for(i=0; i<pEL->nExpr; i++){
          FUNC7(pParse, pEL->a[i].pExpr, pEL->a[i].u.iConstExprReg);
        }
      }

      /* Finally, jump back to the beginning of the executable code. */
      FUNC17(v, 1);
    }
  }


  /* Get the VDBE program ready for execution
  */
  if( v && pParse->nErr==0 && !db->mallocFailed ){
    /* A minimum of one cursor is required if autoincrement is used
    *  See ticket [a696379c1f08866] */
    FUNC3( pParse->pAinc==0 || pParse->nTab>0 );
    FUNC19(v, pParse);
    pParse->rc = SQLITE_DONE;
  }else{
    pParse->rc = SQLITE_ERROR;
  }
}