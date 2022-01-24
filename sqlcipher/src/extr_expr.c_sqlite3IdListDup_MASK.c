#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct IdList_item {int /*<<< orphan*/  idx; int /*<<< orphan*/  zName; } ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_5__ {int nId; struct IdList_item* a; } ;
typedef  TYPE_1__ IdList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

IdList *FUNC4(sqlite3 *db, IdList *p){
  IdList *pNew;
  int i;
  FUNC0( db!=0 );
  if( p==0 ) return 0;
  pNew = FUNC2(db, sizeof(*pNew) );
  if( pNew==0 ) return 0;
  pNew->nId = p->nId;
  pNew->a = FUNC2(db, p->nId*sizeof(p->a[0]) );
  if( pNew->a==0 ){
    FUNC1(db, pNew);
    return 0;
  }
  /* Note that because the size of the allocation for p->a[] is not
  ** necessarily a power of two, sqlite3IdListAppend() may not be called
  ** on the duplicate created by this function. */
  for(i=0; i<p->nId; i++){
    struct IdList_item *pNewItem = &pNew->a[i];
    struct IdList_item *pOldItem = &p->a[i];
    pNewItem->zName = FUNC3(db, pOldItem->zName);
    pNewItem->idx = pOldItem->idx;
  }
  return pNew;
}