
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct RowSetEntry {scalar_t__ v; struct RowSetEntry* pRight; } ;
typedef scalar_t__ i64 ;
struct TYPE_4__ {int rsFlags; struct RowSetEntry* pLast; struct RowSetEntry* pEntry; } ;
typedef TYPE_1__ RowSet ;


 int ROWSET_NEXT ;
 int ROWSET_SORTED ;
 int assert (int) ;
 struct RowSetEntry* rowSetEntryAlloc (TYPE_1__*) ;

void sqlite3RowSetInsert(RowSet *p, i64 rowid){
  struct RowSetEntry *pEntry;
  struct RowSetEntry *pLast;


  assert( p!=0 && (p->rsFlags & ROWSET_NEXT)==0 );

  pEntry = rowSetEntryAlloc(p);
  if( pEntry==0 ) return;
  pEntry->v = rowid;
  pEntry->pRight = 0;
  pLast = p->pLast;
  if( pLast ){
    if( rowid<=pLast->v ){


      p->rsFlags &= ~ROWSET_SORTED;
    }
    pLast->pRight = pEntry;
  }else{
    p->pEntry = pEntry;
  }
  p->pLast = pEntry;
}
