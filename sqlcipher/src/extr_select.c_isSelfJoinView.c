
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ viaCoroutine; } ;
struct SrcList_item {scalar_t__ zName; scalar_t__ zDatabase; TYPE_3__* pSelect; TYPE_1__ fg; } ;
struct TYPE_7__ {scalar_t__ selId; int pWhere; } ;
struct TYPE_6__ {struct SrcList_item* a; } ;
typedef TYPE_2__ SrcList ;
typedef TYPE_3__ Select ;


 scalar_t__ sqlite3ExprCompare (int ,int ,int ,int) ;
 scalar_t__ sqlite3_stricmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct SrcList_item *isSelfJoinView(
  SrcList *pTabList,
  struct SrcList_item *pThis
){
  struct SrcList_item *pItem;
  for(pItem = pTabList->a; pItem<pThis; pItem++){
    Select *pS1;
    if( pItem->pSelect==0 ) continue;
    if( pItem->fg.viaCoroutine ) continue;
    if( pItem->zName==0 ) continue;
    if( sqlite3_stricmp(pItem->zDatabase, pThis->zDatabase)!=0 ) continue;
    if( sqlite3_stricmp(pItem->zName, pThis->zName)!=0 ) continue;
    pS1 = pItem->pSelect;
    if( pThis->pSelect->selId!=pS1->selId ){


      continue;
    }
    if( sqlite3ExprCompare(0, pThis->pSelect->pWhere, pS1->pWhere, -1) ){


      continue;
    }
    return pItem;
  }
  return 0;
}
