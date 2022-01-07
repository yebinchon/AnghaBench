
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int flags; } ;
typedef TYPE_1__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_15__ {scalar_t__ pSelect; TYPE_4__* pFKey; } ;
typedef TYPE_2__ Table ;
struct TYPE_17__ {scalar_t__ isDeferred; struct TYPE_17__* pNextFrom; } ;
struct TYPE_16__ {int disableTriggers; TYPE_1__* db; } ;
typedef int SrcList ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ FKey ;


 int IsVirtual (TYPE_2__*) ;
 int OE_Abort ;
 int OP_FkIfZero ;
 int P4_STATIC ;
 int P5_ConstraintFK ;
 int SQLITE_CONSTRAINT_FOREIGNKEY ;
 int SQLITE_DeferFKs ;
 int SQLITE_ForeignKeys ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int sqlite3DeleteFrom (TYPE_3__*,int ,int ,int ,int ) ;
 scalar_t__ sqlite3FkReferences (TYPE_2__*) ;
 int * sqlite3GetVdbe (TYPE_3__*) ;
 int sqlite3HaltConstraint (TYPE_3__*,int ,int ,int ,int ,int ) ;
 int sqlite3SrcListDup (TYPE_1__*,int *,int ) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeMakeLabel (TYPE_3__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int sqlite3VdbeVerifyAbortable (int *,int ) ;

void sqlite3FkDropTable(Parse *pParse, SrcList *pName, Table *pTab){
  sqlite3 *db = pParse->db;
  if( (db->flags&SQLITE_ForeignKeys) && !IsVirtual(pTab) ){
    int iSkip = 0;
    Vdbe *v = sqlite3GetVdbe(pParse);

    assert( v );
    assert( pTab->pSelect==0 );
    if( sqlite3FkReferences(pTab)==0 ){





      FKey *p;
      for(p=pTab->pFKey; p; p=p->pNextFrom){
        if( p->isDeferred || (db->flags & SQLITE_DeferFKs) ) break;
      }
      if( !p ) return;
      iSkip = sqlite3VdbeMakeLabel(pParse);
      sqlite3VdbeAddOp2(v, OP_FkIfZero, 1, iSkip); VdbeCoverage(v);
    }

    pParse->disableTriggers = 1;
    sqlite3DeleteFrom(pParse, sqlite3SrcListDup(db, pName, 0), 0, 0, 0);
    pParse->disableTriggers = 0;
    if( (db->flags & SQLITE_DeferFKs)==0 ){
      sqlite3VdbeVerifyAbortable(v, OE_Abort);
      sqlite3VdbeAddOp2(v, OP_FkIfZero, 0, sqlite3VdbeCurrentAddr(v)+2);
      VdbeCoverage(v);
      sqlite3HaltConstraint(pParse, SQLITE_CONSTRAINT_FOREIGNKEY,
          OE_Abort, 0, P4_STATIC, P5_ConstraintFK);
    }

    if( iSkip ){
      sqlite3VdbeResolveLabel(v, iSkip);
    }
  }
}
