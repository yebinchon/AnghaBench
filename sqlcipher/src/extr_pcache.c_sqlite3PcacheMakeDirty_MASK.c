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
struct TYPE_5__ {scalar_t__ nRef; int flags; int /*<<< orphan*/  pgno; int /*<<< orphan*/  pCache; } ;
typedef  TYPE_1__ PgHdr ;

/* Variables and functions */
 int /*<<< orphan*/  PCACHE_DIRTYLIST_ADD ; 
 int PGHDR_CLEAN ; 
 int PGHDR_DIRTY ; 
 int PGHDR_DONT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_1__*) ; 

void FUNC4(PgHdr *p){
  FUNC0( p->nRef>0 );
  FUNC0( FUNC3(p) );
  if( p->flags & (PGHDR_CLEAN|PGHDR_DONT_WRITE) ){    /*OPTIMIZATION-IF-FALSE*/
    p->flags &= ~PGHDR_DONT_WRITE;
    if( p->flags & PGHDR_CLEAN ){
      p->flags ^= (PGHDR_DIRTY|PGHDR_CLEAN);
      FUNC2(("%p.DIRTY %d\n",p->pCache,p->pgno));
      FUNC0( (p->flags & (PGHDR_DIRTY|PGHDR_CLEAN))==PGHDR_DIRTY );
      FUNC1(p, PCACHE_DIRTYLIST_ADD);
    }
    FUNC0( FUNC3(p) );
  }
}