
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t iPg; scalar_t__ nDepth; TYPE_1__* aPg; } ;
struct TYPE_7__ {scalar_t__ iCell; scalar_t__ iPg; } ;
struct TYPE_6__ {int iCell; int pPage; } ;
typedef TYPE_2__ MergeInput ;
typedef TYPE_3__ BtreeCursor ;


 scalar_t__ lsmFsPageNumber (int ) ;

__attribute__((used)) static void btreeCursorPosition(BtreeCursor *pCsr, MergeInput *p){
  if( pCsr->iPg>=0 ){
    p->iPg = lsmFsPageNumber(pCsr->aPg[pCsr->iPg].pPage);
    p->iCell = ((pCsr->aPg[pCsr->iPg].iCell + 1) << 8) + pCsr->nDepth;
  }else{
    p->iPg = 0;
    p->iCell = 0;
  }
}
