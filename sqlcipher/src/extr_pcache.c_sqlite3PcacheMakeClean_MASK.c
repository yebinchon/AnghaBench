#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; scalar_t__ nRef; int /*<<< orphan*/  pgno; int /*<<< orphan*/  pCache; } ;
typedef  TYPE_1__ PgHdr ;

/* Variables and functions */
 int /*<<< orphan*/  PCACHE_DIRTYLIST_REMOVE ; 
 int PGHDR_CLEAN ; 
 int PGHDR_DIRTY ; 
 int PGHDR_NEED_SYNC ; 
 int PGHDR_WRITEABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

void FUNC5(PgHdr *p){
  FUNC0( FUNC4(p) );
  FUNC0( (p->flags & PGHDR_DIRTY)!=0 );
  FUNC0( (p->flags & PGHDR_CLEAN)==0 );
  FUNC1(p, PCACHE_DIRTYLIST_REMOVE);
  p->flags &= ~(PGHDR_DIRTY|PGHDR_NEED_SYNC|PGHDR_WRITEABLE);
  p->flags |= PGHDR_CLEAN;
  FUNC2(("%p.CLEAN %d\n",p->pCache,p->pgno));
  FUNC0( FUNC4(p) );
  if( p->nRef==0 ){
    FUNC3(p);
  }
}