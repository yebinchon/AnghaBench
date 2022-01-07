
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_57__ TYPE_9__ ;
typedef struct TYPE_56__ TYPE_8__ ;
typedef struct TYPE_55__ TYPE_7__ ;
typedef struct TYPE_54__ TYPE_6__ ;
typedef struct TYPE_53__ TYPE_5__ ;
typedef struct TYPE_52__ TYPE_4__ ;
typedef struct TYPE_51__ TYPE_3__ ;
typedef struct TYPE_50__ TYPE_2__ ;
typedef struct TYPE_49__ TYPE_1__ ;
typedef struct TYPE_48__ TYPE_10__ ;


struct SrcList_item {scalar_t__ zName; scalar_t__ iCursor; TYPE_1__* pTab; } ;
struct TYPE_53__ {int flags; scalar_t__ mallocFailed; scalar_t__ xAuth; TYPE_2__* aDb; } ;
typedef TYPE_5__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_54__ {int iPKey; int zName; int tnum; TYPE_4__* aCol; TYPE_10__* pFKey; int pSchema; } ;
typedef TYPE_6__ Table ;
struct TYPE_57__ {size_t* aiColumn; } ;
struct TYPE_56__ {int disableTriggers; int nTab; int isMultiWrite; int pToplevel; TYPE_5__* db; } ;
struct TYPE_55__ {struct SrcList_item* a; } ;
struct TYPE_52__ {char* zName; } ;
struct TYPE_51__ {int iFrom; } ;
struct TYPE_50__ {char* zDbSName; } ;
struct TYPE_49__ {int nTabRef; scalar_t__ zName; } ;
struct TYPE_48__ {int nCol; int isDeferred; int* aAction; TYPE_1__* pFrom; struct TYPE_48__* pNextTo; TYPE_3__* aCol; int zTo; struct TYPE_48__* pNextFrom; } ;
typedef TYPE_7__ SrcList ;
typedef TYPE_8__ Parse ;
typedef TYPE_9__ Index ;
typedef TYPE_10__ FKey ;


 int OE_Cascade ;
 int OE_SetNull ;
 int OP_FkCounter ;
 int OP_IsNull ;
 int SQLITE_DeferFKs ;
 int SQLITE_ForeignKeys ;
 int SQLITE_IGNORE ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 scalar_t__ fkChildIsModified (TYPE_6__*,TYPE_10__*,int*,int) ;
 int fkLookupParent (TYPE_8__*,int,TYPE_6__*,TYPE_9__*,TYPE_10__*,int*,int,int,int) ;
 scalar_t__ fkParentIsModified (TYPE_6__*,TYPE_10__*,int*,int) ;
 int fkScanChildren (TYPE_8__*,TYPE_7__*,TYPE_6__*,TYPE_9__*,TYPE_10__*,int*,int,int) ;
 int isSetNullAction (TYPE_8__*,TYPE_10__*) ;
 int sqlite3AuthReadCol (TYPE_8__*,int ,char*,int) ;
 int sqlite3DbFree (TYPE_5__*,int*) ;
 TYPE_6__* sqlite3FindTable (TYPE_5__*,int ,char const*) ;
 scalar_t__ sqlite3FkLocateIndex (TYPE_8__*,TYPE_6__*,TYPE_10__*,TYPE_9__**,int**) ;
 TYPE_10__* sqlite3FkReferences (TYPE_6__*) ;
 int * sqlite3GetVdbe (TYPE_8__*) ;
 TYPE_6__* sqlite3LocateTable (TYPE_8__*,int ,int ,char const*) ;
 int sqlite3MayAbort (TYPE_8__*) ;
 int sqlite3SchemaToIndex (TYPE_5__*,int ) ;
 TYPE_7__* sqlite3SrcListAppend (TYPE_8__*,int ,int ,int ) ;
 int sqlite3SrcListDelete (TYPE_5__*,TYPE_7__*) ;
 int sqlite3TableLock (TYPE_8__*,int,int ,int ,int ) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 scalar_t__ sqlite3_stricmp (int ,int ) ;

void sqlite3FkCheck(
  Parse *pParse,
  Table *pTab,
  int regOld,
  int regNew,
  int *aChange,
  int bChngRowid
){
  sqlite3 *db = pParse->db;
  FKey *pFKey;
  int iDb;
  const char *zDb;
  int isIgnoreErrors = pParse->disableTriggers;


  assert( (regOld==0)!=(regNew==0) );


  if( (db->flags&SQLITE_ForeignKeys)==0 ) return;

  iDb = sqlite3SchemaToIndex(db, pTab->pSchema);
  zDb = db->aDb[iDb].zDbSName;



  for(pFKey=pTab->pFKey; pFKey; pFKey=pFKey->pNextFrom){
    Table *pTo;
    Index *pIdx = 0;
    int *aiFree = 0;
    int *aiCol;
    int iCol;
    int i;
    int bIgnore = 0;

    if( aChange
     && sqlite3_stricmp(pTab->zName, pFKey->zTo)!=0
     && fkChildIsModified(pTab, pFKey, aChange, bChngRowid)==0
    ){
      continue;
    }





    if( pParse->disableTriggers ){
      pTo = sqlite3FindTable(db, pFKey->zTo, zDb);
    }else{
      pTo = sqlite3LocateTable(pParse, 0, pFKey->zTo, zDb);
    }
    if( !pTo || sqlite3FkLocateIndex(pParse, pTo, pFKey, &pIdx, &aiFree) ){
      assert( isIgnoreErrors==0 || (regOld!=0 && regNew==0) );
      if( !isIgnoreErrors || db->mallocFailed ) return;
      if( pTo==0 ){







        Vdbe *v = sqlite3GetVdbe(pParse);
        int iJump = sqlite3VdbeCurrentAddr(v) + pFKey->nCol + 1;
        for(i=0; i<pFKey->nCol; i++){
          int iReg = pFKey->aCol[i].iFrom + regOld + 1;
          sqlite3VdbeAddOp2(v, OP_IsNull, iReg, iJump); VdbeCoverage(v);
        }
        sqlite3VdbeAddOp2(v, OP_FkCounter, pFKey->isDeferred, -1);
      }
      continue;
    }
    assert( pFKey->nCol==1 || (aiFree && pIdx) );

    if( aiFree ){
      aiCol = aiFree;
    }else{
      iCol = pFKey->aCol[0].iFrom;
      aiCol = &iCol;
    }
    for(i=0; i<pFKey->nCol; i++){
      if( aiCol[i]==pTab->iPKey ){
        aiCol[i] = -1;
      }
      assert( pIdx==0 || pIdx->aiColumn[i]>=0 );




      if( db->xAuth ){
        int rcauth;
        char *zCol = pTo->aCol[pIdx ? pIdx->aiColumn[i] : pTo->iPKey].zName;
        rcauth = sqlite3AuthReadCol(pParse, pTo->zName, zCol, iDb);
        bIgnore = (rcauth==SQLITE_IGNORE);
      }

    }




    sqlite3TableLock(pParse, iDb, pTo->tnum, 0, pTo->zName);
    pParse->nTab++;

    if( regOld!=0 ){



      fkLookupParent(pParse, iDb, pTo, pIdx, pFKey, aiCol, regOld, -1, bIgnore);
    }
    if( regNew!=0 && !isSetNullAction(pParse, pFKey) ){
      fkLookupParent(pParse, iDb, pTo, pIdx, pFKey, aiCol, regNew, +1, bIgnore);
    }

    sqlite3DbFree(db, aiFree);
  }



  for(pFKey = sqlite3FkReferences(pTab); pFKey; pFKey=pFKey->pNextTo){
    Index *pIdx = 0;
    SrcList *pSrc;
    int *aiCol = 0;

    if( aChange && fkParentIsModified(pTab, pFKey, aChange, bChngRowid)==0 ){
      continue;
    }

    if( !pFKey->isDeferred && !(db->flags & SQLITE_DeferFKs)
     && !pParse->pToplevel && !pParse->isMultiWrite
    ){
      assert( regOld==0 && regNew!=0 );


      continue;
    }

    if( sqlite3FkLocateIndex(pParse, pTab, pFKey, &pIdx, &aiCol) ){
      if( !isIgnoreErrors || db->mallocFailed ) return;
      continue;
    }
    assert( aiCol || pFKey->nCol==1 );



    pSrc = sqlite3SrcListAppend(pParse, 0, 0, 0);
    if( pSrc ){
      struct SrcList_item *pItem = pSrc->a;
      pItem->pTab = pFKey->pFrom;
      pItem->zName = pFKey->pFrom->zName;
      pItem->pTab->nTabRef++;
      pItem->iCursor = pParse->nTab++;

      if( regNew!=0 ){
        fkScanChildren(pParse, pSrc, pTab, pIdx, pFKey, aiCol, regNew, -1);
      }
      if( regOld!=0 ){
        int eAction = pFKey->aAction[aChange!=0];
        fkScanChildren(pParse, pSrc, pTab, pIdx, pFKey, aiCol, regOld, 1);
        if( !pFKey->isDeferred && eAction!=OE_Cascade && eAction!=OE_SetNull ){
          sqlite3MayAbort(pParse);
        }
      }
      pItem->zName = 0;
      sqlite3SrcListDelete(db, pSrc);
    }
    sqlite3DbFree(db, aiCol);
  }
}
