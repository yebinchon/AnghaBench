
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_13__ {TYPE_3__* pIndex; } ;
typedef TYPE_1__ Table ;
struct TYPE_15__ {int nColumn; int nKeyCol; scalar_t__ uniqNotNull; int zName; struct TYPE_15__* pNext; } ;
struct TYPE_14__ {int * pVdbe; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Index ;


 scalar_t__ HasRowid (TYPE_1__*) ;
 int OP_IdxDelete ;
 int VdbeModuleComment (int *) ;
 int assert (int) ;
 int sqlite3GenerateIndexKey (TYPE_2__*,TYPE_3__*,int,int ,int,int*,TYPE_3__*,int) ;
 TYPE_3__* sqlite3PrimaryKeyIndex (TYPE_1__*) ;
 int sqlite3ResolvePartIdxLabel (TYPE_2__*,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int ) ;

void sqlite3GenerateRowIndexDelete(
  Parse *pParse,
  Table *pTab,
  int iDataCur,
  int iIdxCur,
  int *aRegIdx,
  int iIdxNoSeek
){
  int i;
  int r1 = -1;
  int iPartIdxLabel;
  Index *pIdx;
  Index *pPrior = 0;
  Vdbe *v;
  Index *pPk;

  v = pParse->pVdbe;
  pPk = HasRowid(pTab) ? 0 : sqlite3PrimaryKeyIndex(pTab);
  for(i=0, pIdx=pTab->pIndex; pIdx; i++, pIdx=pIdx->pNext){
    assert( iIdxCur+i!=iDataCur || pPk==pIdx );
    if( aRegIdx!=0 && aRegIdx[i]==0 ) continue;
    if( pIdx==pPk ) continue;
    if( iIdxCur+i==iIdxNoSeek ) continue;
    VdbeModuleComment((v, "GenRowIdxDel for %s", pIdx->zName));
    r1 = sqlite3GenerateIndexKey(pParse, pIdx, iDataCur, 0, 1,
        &iPartIdxLabel, pPrior, r1);
    sqlite3VdbeAddOp3(v, OP_IdxDelete, iIdxCur+i, r1,
        pIdx->uniqNotNull ? pIdx->nKeyCol : pIdx->nColumn);
    sqlite3ResolvePartIdxLabel(pParse, iPartIdxLabel);
    pPrior = pIdx;
  }
}
