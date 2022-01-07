
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct SrcList_item {int iCursor; void* zDatabase; void* zName; } ;
typedef int sqlite3 ;
struct TYPE_15__ {scalar_t__ z; } ;
typedef TYPE_1__ Token ;
struct TYPE_17__ {int * db; } ;
struct TYPE_16__ {int nAlloc; int nSrc; struct SrcList_item* a; } ;
typedef TYPE_2__ SrcList ;
typedef TYPE_3__ Parse ;


 int assert (int) ;
 int memset (struct SrcList_item*,int ,int) ;
 TYPE_2__* sqlite3DbMallocRawNN (int *,int) ;
 void* sqlite3NameFromToken (int *,TYPE_1__*) ;
 int sqlite3SrcListDelete (int *,TYPE_2__*) ;
 TYPE_2__* sqlite3SrcListEnlarge (TYPE_3__*,TYPE_2__*,int,int) ;

SrcList *sqlite3SrcListAppend(
  Parse *pParse,
  SrcList *pList,
  Token *pTable,
  Token *pDatabase
){
  struct SrcList_item *pItem;
  sqlite3 *db;
  assert( pDatabase==0 || pTable!=0 );
  assert( pParse!=0 );
  assert( pParse->db!=0 );
  db = pParse->db;
  if( pList==0 ){
    pList = sqlite3DbMallocRawNN(pParse->db, sizeof(SrcList) );
    if( pList==0 ) return 0;
    pList->nAlloc = 1;
    pList->nSrc = 1;
    memset(&pList->a[0], 0, sizeof(pList->a[0]));
    pList->a[0].iCursor = -1;
  }else{
    SrcList *pNew = sqlite3SrcListEnlarge(pParse, pList, 1, pList->nSrc);
    if( pNew==0 ){
      sqlite3SrcListDelete(db, pList);
      return 0;
    }else{
      pList = pNew;
    }
  }
  pItem = &pList->a[pList->nSrc-1];
  if( pDatabase && pDatabase->z==0 ){
    pDatabase = 0;
  }
  if( pDatabase ){
    pItem->zName = sqlite3NameFromToken(db, pDatabase);
    pItem->zDatabase = sqlite3NameFromToken(db, pTable);
  }else{
    pItem->zName = sqlite3NameFromToken(db, pTable);
    pItem->zDatabase = 0;
  }
  return pList;
}
