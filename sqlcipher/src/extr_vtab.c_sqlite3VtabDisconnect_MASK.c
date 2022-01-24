#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_10__ {struct TYPE_10__* pNext; TYPE_1__* db; } ;
typedef  TYPE_2__ VTable ;
struct TYPE_11__ {TYPE_2__* pVTable; } ;
typedef  TYPE_3__ Table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(sqlite3 *db, Table *p){
  VTable **ppVTab;

  FUNC1( FUNC0(p) );
  FUNC1( FUNC2(db) );
  FUNC1( FUNC4(db->mutex) );

  for(ppVTab=&p->pVTable; *ppVTab; ppVTab=&(*ppVTab)->pNext){
    if( (*ppVTab)->db==db  ){
      VTable *pVTab = *ppVTab;
      *ppVTab = pVTab->pNext;
      FUNC3(pVTab);
      break;
    }
  }
}