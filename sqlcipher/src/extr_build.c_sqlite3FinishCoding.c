
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_11__ ;


struct TYPE_23__ {scalar_t__ busy; } ;
struct TYPE_21__ {scalar_t__ authLevel; } ;
struct TYPE_26__ {scalar_t__ mallocFailed; int nDb; TYPE_3__ init; TYPE_2__* aDb; TYPE_1__ auth; } ;
typedef TYPE_6__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_29__ {int nExpr; TYPE_5__* a; } ;
struct TYPE_28__ {scalar_t__ pToplevel; scalar_t__ nErr; scalar_t__ rc; scalar_t__ nTableLock; int nVtabLock; scalar_t__ pAinc; scalar_t__ nTab; scalar_t__ okConstFactor; TYPE_9__* pConstExpr; int * apVtabLock; scalar_t__ isMultiWrite; scalar_t__ mayAbort; int writeMask; int cookieMask; scalar_t__ nested; TYPE_6__* db; } ;
struct TYPE_27__ {int iGeneration; int schema_cookie; } ;
struct TYPE_24__ {int iConstExprReg; } ;
struct TYPE_25__ {TYPE_4__ u; int pExpr; } ;
struct TYPE_22__ {TYPE_7__* pSchema; } ;
struct TYPE_20__ {scalar_t__ opcode; } ;
typedef TYPE_7__ Schema ;
typedef TYPE_8__ Parse ;
typedef TYPE_9__ ExprList ;


 scalar_t__ DbMaskNonZero (int ) ;
 scalar_t__ DbMaskTest (int ,int) ;
 int OP_Halt ;
 scalar_t__ OP_Init ;
 int OP_Transaction ;
 int OP_VBegin ;
 int P4_VTAB ;
 scalar_t__ SQLITE_AUTH_USER ;
 scalar_t__ SQLITE_DONE ;
 void* SQLITE_ERROR ;
 scalar_t__ SQLITE_OK ;
 scalar_t__ UAUTH_User ;
 int VdbeComment (int *) ;
 int assert (int) ;
 int codeTableLocks (TYPE_8__*) ;
 int sqlite3AutoincrementBegin (TYPE_8__*) ;
 int sqlite3ErrorMsg (TYPE_8__*,char*) ;
 int sqlite3ExprCode (TYPE_8__*,int ,int ) ;
 scalar_t__ sqlite3GetVTable (TYPE_6__*,int ) ;
 int * sqlite3GetVdbe (TYPE_8__*) ;
 int sqlite3UserAuthInit (TYPE_6__*) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int ,int ,char*,int ) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,scalar_t__,int ,int ) ;
 scalar_t__ sqlite3VdbeAssertMayAbort (int *,scalar_t__) ;
 int sqlite3VdbeChangeP5 (int *,int) ;
 TYPE_11__* sqlite3VdbeGetOp (int *,int ) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int ) ;
 int sqlite3VdbeMakeReady (int *,TYPE_8__*) ;
 int sqlite3VdbeUsesBtree (int *,int) ;

void sqlite3FinishCoding(Parse *pParse){
  sqlite3 *db;
  Vdbe *v;

  assert( pParse->pToplevel==0 );
  db = pParse->db;
  if( pParse->nested ) return;
  if( db->mallocFailed || pParse->nErr ){
    if( pParse->rc==SQLITE_OK ) pParse->rc = SQLITE_ERROR;
    return;
  }




  v = sqlite3GetVdbe(pParse);
  assert( !pParse->isMultiWrite
       || sqlite3VdbeAssertMayAbort(v, pParse->mayAbort));
  if( v ){
    sqlite3VdbeAddOp0(v, OP_Halt);
    if( db->mallocFailed==0
     && (DbMaskNonZero(pParse->cookieMask) || pParse->pConstExpr)
    ){
      int iDb, i;
      assert( sqlite3VdbeGetOp(v, 0)->opcode==OP_Init );
      sqlite3VdbeJumpHere(v, 0);
      for(iDb=0; iDb<db->nDb; iDb++){
        Schema *pSchema;
        if( DbMaskTest(pParse->cookieMask, iDb)==0 ) continue;
        sqlite3VdbeUsesBtree(v, iDb);
        pSchema = db->aDb[iDb].pSchema;
        sqlite3VdbeAddOp4Int(v,
          OP_Transaction,
          iDb,
          DbMaskTest(pParse->writeMask,iDb),
          pSchema->schema_cookie,
          pSchema->iGeneration
        );
        if( db->init.busy==0 ) sqlite3VdbeChangeP5(v, 1);
        VdbeComment((v,
              "usesStmtJournal=%d", pParse->mayAbort && pParse->isMultiWrite));
      }

      for(i=0; i<pParse->nVtabLock; i++){
        char *vtab = (char *)sqlite3GetVTable(db, pParse->apVtabLock[i]);
        sqlite3VdbeAddOp4(v, OP_VBegin, 0, 0, 0, vtab, P4_VTAB);
      }
      pParse->nVtabLock = 0;






      codeTableLocks(pParse);



      sqlite3AutoincrementBegin(pParse);


      if( pParse->pConstExpr ){
        ExprList *pEL = pParse->pConstExpr;
        pParse->okConstFactor = 0;
        for(i=0; i<pEL->nExpr; i++){
          sqlite3ExprCode(pParse, pEL->a[i].pExpr, pEL->a[i].u.iConstExprReg);
        }
      }


      sqlite3VdbeGoto(v, 1);
    }
  }




  if( v && pParse->nErr==0 && !db->mallocFailed ){


    assert( pParse->pAinc==0 || pParse->nTab>0 );
    sqlite3VdbeMakeReady(v, pParse);
    pParse->rc = SQLITE_DONE;
  }else{
    pParse->rc = SQLITE_ERROR;
  }
}
