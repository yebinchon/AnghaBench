
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct SrcList_item {scalar_t__ iCursor; TYPE_1__* pSelect; } ;
struct TYPE_10__ {int nTab; TYPE_2__* db; } ;
struct TYPE_9__ {int nSrc; struct SrcList_item* a; } ;
struct TYPE_8__ {scalar_t__ mallocFailed; } ;
struct TYPE_7__ {TYPE_3__* pSrc; } ;
typedef TYPE_3__ SrcList ;
typedef TYPE_4__ Parse ;


 int assert (int) ;

void sqlite3SrcListAssignCursors(Parse *pParse, SrcList *pList){
  int i;
  struct SrcList_item *pItem;
  assert(pList || pParse->db->mallocFailed );
  if( pList ){
    for(i=0, pItem=pList->a; i<pList->nSrc; i++, pItem++){
      if( pItem->iCursor>=0 ) break;
      pItem->iCursor = pParse->nTab++;
      if( pItem->pSelect ){
        sqlite3SrcListAssignCursors(pParse, pItem->pSelect->pSrc);
      }
    }
  }
}
