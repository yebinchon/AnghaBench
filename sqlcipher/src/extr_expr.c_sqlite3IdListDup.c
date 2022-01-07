
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct IdList_item {int idx; int zName; } ;
typedef int sqlite3 ;
struct TYPE_5__ {int nId; struct IdList_item* a; } ;
typedef TYPE_1__ IdList ;


 int assert (int) ;
 int sqlite3DbFreeNN (int *,TYPE_1__*) ;
 void* sqlite3DbMallocRawNN (int *,int) ;
 int sqlite3DbStrDup (int *,int ) ;

IdList *sqlite3IdListDup(sqlite3 *db, IdList *p){
  IdList *pNew;
  int i;
  assert( db!=0 );
  if( p==0 ) return 0;
  pNew = sqlite3DbMallocRawNN(db, sizeof(*pNew) );
  if( pNew==0 ) return 0;
  pNew->nId = p->nId;
  pNew->a = sqlite3DbMallocRawNN(db, p->nId*sizeof(p->a[0]) );
  if( pNew->a==0 ){
    sqlite3DbFreeNN(db, pNew);
    return 0;
  }



  for(i=0; i<p->nId; i++){
    struct IdList_item *pNewItem = &pNew->a[i];
    struct IdList_item *pOldItem = &p->a[i];
    pNewItem->zName = sqlite3DbStrDup(db, pOldItem->zName);
    pNewItem->idx = pOldItem->idx;
  }
  return pNew;
}
