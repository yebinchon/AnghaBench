
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ i64 ;
struct TYPE_4__ {scalar_t__ bReverse; int bDone; size_t iFree; int pUsrctx; scalar_t__ (* xUsr ) (int ,int,scalar_t__) ;TYPE_3__* pFreelist; } ;
typedef TYPE_1__ WalkFreelistCtx ;
struct TYPE_6__ {size_t nEntry; TYPE_2__* aEntry; } ;
struct TYPE_5__ {scalar_t__ iBlk; scalar_t__ iId; } ;
typedef TYPE_2__ FreelistEntry ;
typedef TYPE_3__ Freelist ;


 int assert (int) ;
 scalar_t__ stub1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ stub2 (int ,int,scalar_t__) ;

__attribute__((used)) static int walkFreelistCb(void *pCtx, int iBlk, i64 iSnapshot){
  WalkFreelistCtx *p = (WalkFreelistCtx *)pCtx;
  const int iDir = (p->bReverse ? -1 : 1);
  Freelist *pFree = p->pFreelist;

  assert( p->bDone==0 );
  assert( iBlk>=0 );
  if( pFree ){
    while( (p->iFree < pFree->nEntry) && p->iFree>=0 ){
      FreelistEntry *pEntry = &pFree->aEntry[p->iFree];
      if( (p->bReverse==0 && pEntry->iBlk>(u32)iBlk)
       || (p->bReverse!=0 && pEntry->iBlk<(u32)iBlk)
      ){
        break;
      }else{
        p->iFree += iDir;
        if( pEntry->iId>=0
            && p->xUsr(p->pUsrctx, pEntry->iBlk, pEntry->iId)
          ){
          p->bDone = 1;
          return 1;
        }
        if( pEntry->iBlk==(u32)iBlk ) return 0;
      }
    }
  }

  if( p->xUsr(p->pUsrctx, iBlk, iSnapshot) ){
    p->bDone = 1;
    return 1;
  }
  return 0;
}
