
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {scalar_t__ bPurgeable; int eCreate; TYPE_1__* pSynced; TYPE_1__* pDirty; TYPE_1__* pDirtyTail; } ;
struct TYPE_5__ {int flags; struct TYPE_5__* pDirtyPrev; struct TYPE_5__* pDirtyNext; int pgno; TYPE_2__* pCache; } ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ PCache ;


 int PCACHE_DIRTYLIST_ADD ;
 int PCACHE_DIRTYLIST_REMOVE ;
 int PGHDR_NEED_SYNC ;
 int assert (int) ;
 int pcacheDump (TYPE_2__*) ;
 int pcacheTrace (char*) ;

__attribute__((used)) static void pcacheManageDirtyList(PgHdr *pPage, u8 addRemove){
  PCache *p = pPage->pCache;

  pcacheTrace(("%p.DIRTYLIST.%s %d\n", p,
                addRemove==1 ? "REMOVE" : addRemove==2 ? "ADD" : "FRONT",
                pPage->pgno));
  if( addRemove & PCACHE_DIRTYLIST_REMOVE ){
    assert( pPage->pDirtyNext || pPage==p->pDirtyTail );
    assert( pPage->pDirtyPrev || pPage==p->pDirty );


    if( p->pSynced==pPage ){
      p->pSynced = pPage->pDirtyPrev;
    }

    if( pPage->pDirtyNext ){
      pPage->pDirtyNext->pDirtyPrev = pPage->pDirtyPrev;
    }else{
      assert( pPage==p->pDirtyTail );
      p->pDirtyTail = pPage->pDirtyPrev;
    }
    if( pPage->pDirtyPrev ){
      pPage->pDirtyPrev->pDirtyNext = pPage->pDirtyNext;
    }else{




      assert( pPage==p->pDirty );
      p->pDirty = pPage->pDirtyNext;
      assert( p->bPurgeable || p->eCreate==2 );
      if( p->pDirty==0 ){
        assert( p->bPurgeable==0 || p->eCreate==1 );
        p->eCreate = 2;
      }
    }
  }
  if( addRemove & PCACHE_DIRTYLIST_ADD ){
    pPage->pDirtyPrev = 0;
    pPage->pDirtyNext = p->pDirty;
    if( pPage->pDirtyNext ){
      assert( pPage->pDirtyNext->pDirtyPrev==0 );
      pPage->pDirtyNext->pDirtyPrev = pPage;
    }else{
      p->pDirtyTail = pPage;
      if( p->bPurgeable ){
        assert( p->eCreate==2 );
        p->eCreate = 1;
      }
    }
    p->pDirty = pPage;






    if( !p->pSynced
     && 0==(pPage->flags&PGHDR_NEED_SYNC)
    ){
      p->pSynced = pPage;
    }
  }
  pcacheDump(p);
}
