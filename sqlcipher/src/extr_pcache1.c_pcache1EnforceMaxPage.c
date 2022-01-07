
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ nPage; scalar_t__ pFree; scalar_t__ pBulk; TYPE_4__* pGroup; } ;
struct TYPE_10__ {TYPE_3__* pLruPrev; } ;
struct TYPE_13__ {scalar_t__ nPurgeable; scalar_t__ nMaxPage; TYPE_1__ lru; int mutex; } ;
struct TYPE_12__ {scalar_t__ isAnchor; TYPE_2__* pCache; } ;
struct TYPE_11__ {TYPE_4__* pGroup; } ;
typedef TYPE_3__ PgHdr1 ;
typedef TYPE_4__ PGroup ;
typedef TYPE_5__ PCache1 ;


 int PAGE_IS_UNPINNED (TYPE_3__*) ;
 int assert (int) ;
 int pcache1PinPage (TYPE_3__*) ;
 int pcache1RemoveFromHash (TYPE_3__*,int) ;
 int sqlite3_free (scalar_t__) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static void pcache1EnforceMaxPage(PCache1 *pCache){
  PGroup *pGroup = pCache->pGroup;
  PgHdr1 *p;
  assert( sqlite3_mutex_held(pGroup->mutex) );
  while( pGroup->nPurgeable>pGroup->nMaxPage
      && (p=pGroup->lru.pLruPrev)->isAnchor==0
  ){
    assert( p->pCache->pGroup==pGroup );
    assert( PAGE_IS_UNPINNED(p) );
    pcache1PinPage(p);
    pcache1RemoveFromHash(p, 1);
  }
  if( pCache->nPage==0 && pCache->pBulk ){
    sqlite3_free(pCache->pBulk);
    pCache->pBulk = pCache->pFree = 0;
  }
}
