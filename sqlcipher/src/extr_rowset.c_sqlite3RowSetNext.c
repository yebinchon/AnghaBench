
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_7__ {struct TYPE_7__* pRight; int v; } ;
struct TYPE_6__ {scalar_t__ pForest; int rsFlags; TYPE_4__* pEntry; } ;
typedef TYPE_1__ RowSet ;


 int ROWSET_NEXT ;
 int ROWSET_SORTED ;
 int assert (int) ;
 TYPE_4__* rowSetEntrySort (TYPE_4__*) ;
 int sqlite3RowSetClear (TYPE_1__*) ;

int sqlite3RowSetNext(RowSet *p, i64 *pRowid){
  assert( p!=0 );
  assert( p->pForest==0 );


  if( (p->rsFlags & ROWSET_NEXT)==0 ){
    if( (p->rsFlags & ROWSET_SORTED)==0 ){
      p->pEntry = rowSetEntrySort(p->pEntry);
    }
    p->rsFlags |= ROWSET_SORTED|ROWSET_NEXT;
  }


  if( p->pEntry ){
    *pRowid = p->pEntry->v;
    p->pEntry = p->pEntry->pRight;
    if( p->pEntry==0 ){

      sqlite3RowSetClear(p);
    }
    return 1;
  }else{
    return 0;
  }
}
