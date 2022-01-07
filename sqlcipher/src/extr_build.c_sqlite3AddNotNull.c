
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int nCol; TYPE_3__* pIndex; int tabFlags; TYPE_4__* aCol; } ;
typedef TYPE_1__ Table ;
struct TYPE_9__ {int colFlags; scalar_t__ notNull; } ;
struct TYPE_8__ {int nKeyCol; scalar_t__ onError; int* aiColumn; int uniqNotNull; struct TYPE_8__* pNext; } ;
struct TYPE_7__ {TYPE_1__* pNewTable; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Index ;
typedef TYPE_4__ Column ;


 int COLFLAG_UNIQUE ;
 scalar_t__ NEVER (int) ;
 scalar_t__ OE_None ;
 int TF_HasNotNull ;
 int assert (int) ;

void sqlite3AddNotNull(Parse *pParse, int onError){
  Table *p;
  Column *pCol;
  p = pParse->pNewTable;
  if( p==0 || NEVER(p->nCol<1) ) return;
  pCol = &p->aCol[p->nCol-1];
  pCol->notNull = (u8)onError;
  p->tabFlags |= TF_HasNotNull;



  if( pCol->colFlags & COLFLAG_UNIQUE ){
    Index *pIdx;
    for(pIdx=p->pIndex; pIdx; pIdx=pIdx->pNext){
      assert( pIdx->nKeyCol==1 && pIdx->onError!=OE_None );
      if( pIdx->aiColumn[0]==p->nCol-1 ){
        pIdx->uniqNotNull = 1;
      }
    }
  }
}
