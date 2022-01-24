#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mutex; TYPE_2__* pDisconnect; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_8__ {struct TYPE_8__* pNext; } ;
typedef  TYPE_2__ VTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(sqlite3 *db){
  VTable *p = db->pDisconnect;
  db->pDisconnect = 0;

  FUNC0( FUNC1(db) );
  FUNC0( FUNC4(db->mutex) );

  if( p ){
    FUNC2(db, 0);
    do {
      VTable *pNext = p->pNext;
      FUNC3(p);
      p = pNext;
    }while( p );
  }
}