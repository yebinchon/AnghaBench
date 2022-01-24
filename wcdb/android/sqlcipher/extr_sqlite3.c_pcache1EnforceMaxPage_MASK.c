#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ nPage; scalar_t__ pFree; scalar_t__ pBulk; TYPE_4__* pGroup; } ;
struct TYPE_10__ {TYPE_3__* pLruPrev; } ;
struct TYPE_13__ {scalar_t__ nPurgeable; scalar_t__ nMaxPage; TYPE_1__ lru; int /*<<< orphan*/  mutex; } ;
struct TYPE_12__ {scalar_t__ isAnchor; TYPE_2__* pCache; } ;
struct TYPE_11__ {TYPE_4__* pGroup; } ;
typedef  TYPE_3__ PgHdr1 ;
typedef  TYPE_4__ PGroup ;
typedef  TYPE_5__ PCache1 ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(PCache1 *pCache){
  PGroup *pGroup = pCache->pGroup;
  PgHdr1 *p;
  FUNC1( FUNC5(pGroup->mutex) );
  while( pGroup->nPurgeable>pGroup->nMaxPage
      && (p=pGroup->lru.pLruPrev)->isAnchor==0
  ){
    FUNC1( p->pCache->pGroup==pGroup );
    FUNC1( FUNC0(p) );
    FUNC2(p);
    FUNC3(p, 1);
  }
  if( pCache->nPage==0 && pCache->pBulk ){
    FUNC4(pCache->pBulk);
    pCache->pBulk = pCache->pFree = 0;
  }
}