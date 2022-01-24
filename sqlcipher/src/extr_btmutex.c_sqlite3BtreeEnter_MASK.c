#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ locked; scalar_t__ wantToLock; scalar_t__ sharable; TYPE_4__* db; TYPE_3__* pBt; TYPE_2__* pPrev; TYPE_1__* pNext; } ;
struct TYPE_11__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_10__ {TYPE_4__* db; } ;
struct TYPE_9__ {TYPE_4__* db; TYPE_3__* pBt; } ;
struct TYPE_8__ {TYPE_4__* db; TYPE_3__* pBt; } ;
typedef  TYPE_5__ Btree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(Btree *p){
  /* Some basic sanity checking on the Btree.  The list of Btrees
  ** connected by pNext and pPrev should be in sorted order by
  ** Btree.pBt value. All elements of the list should belong to
  ** the same connection. Only shared Btrees are on the list. */
  FUNC0( p->pNext==0 || p->pNext->pBt>p->pBt );
  FUNC0( p->pPrev==0 || p->pPrev->pBt<p->pBt );
  FUNC0( p->pNext==0 || p->pNext->db==p->db );
  FUNC0( p->pPrev==0 || p->pPrev->db==p->db );
  FUNC0( p->sharable || (p->pNext==0 && p->pPrev==0) );

  /* Check for locking consistency */
  FUNC0( !p->locked || p->wantToLock>0 );
  FUNC0( p->sharable || p->wantToLock==0 );

  /* We should already hold a lock on the database connection */
  FUNC0( FUNC2(p->db->mutex) );

  /* Unless the database is sharable and unlocked, then BtShared.db
  ** should already be set correctly. */
  FUNC0( (p->locked==0 && p->sharable) || p->pBt->db==p->db );

  if( !p->sharable ) return;
  p->wantToLock++;
  if( p->locked ) return;
  FUNC1(p);
}