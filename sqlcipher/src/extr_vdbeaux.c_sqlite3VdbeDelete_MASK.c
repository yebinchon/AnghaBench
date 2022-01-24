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
struct TYPE_10__ {TYPE_3__* pVdbe; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_11__ {TYPE_2__* db; int /*<<< orphan*/  magic; TYPE_1__* pPrev; struct TYPE_11__* pNext; } ;
typedef  TYPE_3__ Vdbe ;
struct TYPE_9__ {TYPE_3__* pNext; } ;

/* Variables and functions */
 int /*<<< orphan*/  VDBE_MAGIC_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(Vdbe *p){
  sqlite3 *db;

  FUNC0( p!=0 );
  db = p->db;
  FUNC0( FUNC3(db->mutex) );
  FUNC2(db, p);
  if( p->pPrev ){
    p->pPrev->pNext = p->pNext;
  }else{
    FUNC0( db->pVdbe==p );
    db->pVdbe = p->pNext;
  }
  if( p->pNext ){
    p->pNext->pPrev = p->pPrev;
  }
  p->magic = VDBE_MAGIC_DEAD;
  p->db = 0;
  FUNC1(db, p);
}