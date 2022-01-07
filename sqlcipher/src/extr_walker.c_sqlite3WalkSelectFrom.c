
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pFuncArg; } ;
struct TYPE_6__ {scalar_t__ isTabFunc; } ;
struct SrcList_item {TYPE_2__ u1; TYPE_1__ fg; scalar_t__ pSelect; } ;
typedef int Walker ;
struct TYPE_9__ {TYPE_3__* pSrc; } ;
struct TYPE_8__ {int nSrc; struct SrcList_item* a; } ;
typedef TYPE_3__ SrcList ;
typedef TYPE_4__ Select ;


 int WRC_Abort ;
 int WRC_Continue ;
 int assert (int) ;
 scalar_t__ sqlite3WalkExprList (int *,int ) ;
 scalar_t__ sqlite3WalkSelect (int *,scalar_t__) ;

int sqlite3WalkSelectFrom(Walker *pWalker, Select *p){
  SrcList *pSrc;
  int i;
  struct SrcList_item *pItem;

  pSrc = p->pSrc;
  assert( pSrc!=0 );
  for(i=pSrc->nSrc, pItem=pSrc->a; i>0; i--, pItem++){
    if( pItem->pSelect && sqlite3WalkSelect(pWalker, pItem->pSelect) ){
      return WRC_Abort;
    }
    if( pItem->fg.isTabFunc
     && sqlite3WalkExprList(pWalker, pItem->u1.pFuncArg)
    ){
      return WRC_Abort;
    }
  }
  return WRC_Continue;
}
