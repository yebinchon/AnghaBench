
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ i16 ;
typedef int Vdbe ;
typedef int Trigger ;
struct TYPE_22__ {int nCol; scalar_t__ pSelect; int zName; } ;
typedef TYPE_1__ Table ;
struct TYPE_23__ {int nMem; scalar_t__ nested; int * pVdbe; } ;
typedef TYPE_2__ Parse ;


 scalar_t__ HasRowid (TYPE_1__*) ;
 int MASKBIT32 (int) ;
 scalar_t__ ONEPASS_MULTI ;
 scalar_t__ ONEPASS_OFF ;
 scalar_t__ OPFLAG_AUXDELETE ;
 int OPFLAG_NCHANGE ;
 scalar_t__ OPFLAG_SAVEPOSITION ;
 int OP_Copy ;
 int OP_Delete ;
 scalar_t__ OP_NotExists ;
 scalar_t__ OP_NotFound ;
 int P4_TABLE ;
 int TK_DELETE ;
 int TRIGGER_AFTER ;
 int TRIGGER_BEFORE ;
 int VdbeCoverageIf (int *,int) ;
 int VdbeModuleComment (int *) ;
 int assert (int *) ;
 int sqlite3CodeRowTrigger (TYPE_2__*,int *,int ,int ,int,TYPE_1__*,int,scalar_t__,int) ;
 int sqlite3ExprCodeGetColumnOfTable (int *,TYPE_1__*,int,int,int) ;
 int sqlite3FkActions (TYPE_2__*,TYPE_1__*,int ,int,int ,int ) ;
 int sqlite3FkCheck (TYPE_2__*,TYPE_1__*,int,int ,int ,int ) ;
 int sqlite3FkOldmask (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ sqlite3FkRequired (TYPE_2__*,TYPE_1__*,int ,int ) ;
 int sqlite3GenerateRowIndexDelete (TYPE_2__*,TYPE_1__*,int,int,int ,int) ;
 int sqlite3TriggerColmask (TYPE_2__*,int *,int ,int ,int,TYPE_1__*,scalar_t__) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp4Int (int *,scalar_t__,int,int,int,scalar_t__) ;
 int sqlite3VdbeAppendP4 (int *,char*,int ) ;
 int sqlite3VdbeChangeP5 (int *,scalar_t__) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeMakeLabel (TYPE_2__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 scalar_t__ sqlite3_stricmp (int ,char*) ;
 int testcase (int) ;

void sqlite3GenerateRowDelete(
  Parse *pParse,
  Table *pTab,
  Trigger *pTrigger,
  int iDataCur,
  int iIdxCur,
  int iPk,
  i16 nPk,
  u8 count,
  u8 onconf,
  u8 eMode,
  int iIdxNoSeek
){
  Vdbe *v = pParse->pVdbe;
  int iOld = 0;
  int iLabel;
  u8 opSeek;


  assert( v );
  VdbeModuleComment((v, "BEGIN: GenRowDel(%d,%d,%d,%d)",
                         iDataCur, iIdxCur, iPk, (int)nPk));




  iLabel = sqlite3VdbeMakeLabel(pParse);
  opSeek = HasRowid(pTab) ? OP_NotExists : OP_NotFound;
  if( eMode==ONEPASS_OFF ){
    sqlite3VdbeAddOp4Int(v, opSeek, iDataCur, iLabel, iPk, nPk);
    VdbeCoverageIf(v, opSeek==OP_NotExists);
    VdbeCoverageIf(v, opSeek==OP_NotFound);
  }



  if( sqlite3FkRequired(pParse, pTab, 0, 0) || pTrigger ){
    u32 mask;
    int iCol;
    int addrStart;



    mask = sqlite3TriggerColmask(
        pParse, pTrigger, 0, 0, TRIGGER_BEFORE|TRIGGER_AFTER, pTab, onconf
    );
    mask |= sqlite3FkOldmask(pParse, pTab);
    iOld = pParse->nMem+1;
    pParse->nMem += (1 + pTab->nCol);



    sqlite3VdbeAddOp2(v, OP_Copy, iPk, iOld);
    for(iCol=0; iCol<pTab->nCol; iCol++){
      testcase( mask!=0xffffffff && iCol==31 );
      testcase( mask!=0xffffffff && iCol==32 );
      if( mask==0xffffffff || (iCol<=31 && (mask & MASKBIT32(iCol))!=0) ){
        sqlite3ExprCodeGetColumnOfTable(v, pTab, iDataCur, iCol, iOld+iCol+1);
      }
    }


    addrStart = sqlite3VdbeCurrentAddr(v);
    sqlite3CodeRowTrigger(pParse, pTrigger,
        TK_DELETE, 0, TRIGGER_BEFORE, pTab, iOld, onconf, iLabel
    );
    if( addrStart<sqlite3VdbeCurrentAddr(v) ){
      sqlite3VdbeAddOp4Int(v, opSeek, iDataCur, iLabel, iPk, nPk);
      VdbeCoverageIf(v, opSeek==OP_NotExists);
      VdbeCoverageIf(v, opSeek==OP_NotFound);
      testcase( iIdxNoSeek>=0 );
      iIdxNoSeek = -1;
    }




    sqlite3FkCheck(pParse, pTab, iOld, 0, 0, 0);
  }
  if( pTab->pSelect==0 ){
    u8 p5 = 0;
    sqlite3GenerateRowIndexDelete(pParse, pTab, iDataCur, iIdxCur,0,iIdxNoSeek);
    sqlite3VdbeAddOp2(v, OP_Delete, iDataCur, (count?OPFLAG_NCHANGE:0));
    if( pParse->nested==0 || 0==sqlite3_stricmp(pTab->zName, "sqlite_stat1") ){
      sqlite3VdbeAppendP4(v, (char*)pTab, P4_TABLE);
    }
    if( eMode!=ONEPASS_OFF ){
      sqlite3VdbeChangeP5(v, OPFLAG_AUXDELETE);
    }
    if( iIdxNoSeek>=0 && iIdxNoSeek!=iDataCur ){
      sqlite3VdbeAddOp1(v, OP_Delete, iIdxNoSeek);
    }
    if( eMode==ONEPASS_MULTI ) p5 |= OPFLAG_SAVEPOSITION;
    sqlite3VdbeChangeP5(v, p5);
  }




  sqlite3FkActions(pParse, pTab, 0, iOld, 0, 0);


  sqlite3CodeRowTrigger(pParse, pTrigger,
      TK_DELETE, 0, TRIGGER_AFTER, pTab, iOld, onconf, iLabel
  );




  sqlite3VdbeResolveLabel(v, iLabel);
  VdbeModuleComment((v, "END: GenRowDel()"));
}
