
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct SrcList_item {TYPE_1__* pTab; } ;
struct TYPE_11__ {int nTabRef; } ;
typedef TYPE_1__ Table ;
struct TYPE_13__ {int db; } ;
struct TYPE_12__ {int nSrc; struct SrcList_item* a; } ;
typedef TYPE_2__ SrcList ;
typedef TYPE_3__ Parse ;


 int assert (int ) ;
 int sqlite3DeleteTable (int ,TYPE_1__*) ;
 scalar_t__ sqlite3IndexedByLookup (TYPE_3__*,struct SrcList_item*) ;
 TYPE_1__* sqlite3LocateTableItem (TYPE_3__*,int ,struct SrcList_item*) ;

Table *sqlite3SrcListLookup(Parse *pParse, SrcList *pSrc){
  struct SrcList_item *pItem = pSrc->a;
  Table *pTab;
  assert( pItem && pSrc->nSrc==1 );
  pTab = sqlite3LocateTableItem(pParse, 0, pItem);
  sqlite3DeleteTable(pParse->db, pItem->pTab);
  pItem->pTab = pTab;
  if( pTab ){
    pTab->nTabRef++;
  }
  if( sqlite3IndexedByLookup(pParse, pItem) ){
    pTab = 0;
  }
  return pTab;
}
