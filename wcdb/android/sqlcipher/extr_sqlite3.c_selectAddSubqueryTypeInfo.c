
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct SrcList_item {TYPE_4__* pSelect; TYPE_2__* pTab; } ;
struct TYPE_9__ {int * pParse; } ;
typedef TYPE_1__ Walker ;
struct TYPE_10__ {int tabFlags; } ;
typedef TYPE_2__ Table ;
struct TYPE_12__ {int selFlags; struct TYPE_12__* pPrior; TYPE_3__* pSrc; } ;
struct TYPE_11__ {int nSrc; struct SrcList_item* a; } ;
typedef TYPE_3__ SrcList ;
typedef TYPE_4__ Select ;
typedef int Parse ;


 int SF_HasTypeInfo ;
 int SF_Resolved ;
 int TF_Ephemeral ;
 int assert (int) ;
 int sqlite3SelectAddColumnTypeAndCollation (int *,TYPE_2__*,TYPE_4__*) ;

__attribute__((used)) static void selectAddSubqueryTypeInfo(Walker *pWalker, Select *p){
  Parse *pParse;
  int i;
  SrcList *pTabList;
  struct SrcList_item *pFrom;

  assert( p->selFlags & SF_Resolved );
  if( p->selFlags & SF_HasTypeInfo ) return;
  p->selFlags |= SF_HasTypeInfo;
  pParse = pWalker->pParse;
  pTabList = p->pSrc;
  for(i=0, pFrom=pTabList->a; i<pTabList->nSrc; i++, pFrom++){
    Table *pTab = pFrom->pTab;
    assert( pTab!=0 );
    if( (pTab->tabFlags & TF_Ephemeral)!=0 ){

      Select *pSel = pFrom->pSelect;
      if( pSel ){
        while( pSel->pPrior ) pSel = pSel->pPrior;
        sqlite3SelectAddColumnTypeAndCollation(pParse, pTab, pSel);
      }
    }
  }
}
