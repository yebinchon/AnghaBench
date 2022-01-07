
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_17__ {TYPE_6__* pFKey; } ;
typedef TYPE_3__ Table ;
struct TYPE_20__ {int nCol; struct TYPE_20__* pNextTo; TYPE_2__* aCol; struct TYPE_20__* pNextFrom; } ;
struct TYPE_19__ {int nKeyCol; scalar_t__* aiColumn; } ;
struct TYPE_18__ {TYPE_1__* db; } ;
struct TYPE_16__ {scalar_t__ iFrom; } ;
struct TYPE_15__ {int flags; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ Index ;
typedef TYPE_6__ FKey ;


 int COLUMN_MASK (scalar_t__) ;
 int SQLITE_ForeignKeys ;
 int assert (int) ;
 int sqlite3FkLocateIndex (TYPE_4__*,TYPE_3__*,TYPE_6__*,TYPE_5__**,int ) ;
 TYPE_6__* sqlite3FkReferences (TYPE_3__*) ;

u32 sqlite3FkOldmask(
  Parse *pParse,
  Table *pTab
){
  u32 mask = 0;
  if( pParse->db->flags&SQLITE_ForeignKeys ){
    FKey *p;
    int i;
    for(p=pTab->pFKey; p; p=p->pNextFrom){
      for(i=0; i<p->nCol; i++) mask |= COLUMN_MASK(p->aCol[i].iFrom);
    }
    for(p=sqlite3FkReferences(pTab); p; p=p->pNextTo){
      Index *pIdx = 0;
      sqlite3FkLocateIndex(pParse, pTab, p, &pIdx, 0);
      if( pIdx ){
        for(i=0; i<pIdx->nKeyCol; i++){
          assert( pIdx->aiColumn[i]>=0 );
          mask |= COLUMN_MASK(pIdx->aiColumn[i]);
        }
      }
    }
  }
  return mask;
}
