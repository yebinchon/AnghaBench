
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int u8 ;
typedef int i64 ;
struct TYPE_27__ {int nPagesize; scalar_t__ pCompress; int nOut; TYPE_2__** apHash; int nRead; int fdDb; int pEnv; TYPE_2__* pMapped; scalar_t__ pMap; TYPE_2__* pFree; } ;
struct TYPE_26__ {int flags; scalar_t__ nRef; scalar_t__ pMappedNext; scalar_t__ pLruNext; scalar_t__ pLruPrev; int nData; int * aData; struct TYPE_26__* pHashNext; TYPE_3__* pFS; scalar_t__ iPg; struct TYPE_26__* pFreeNext; } ;
struct TYPE_25__ {int pRedirect; } ;
typedef TYPE_1__ Segment ;
typedef TYPE_2__ Page ;
typedef scalar_t__ LsmPgno ;
typedef TYPE_3__ FileSystem ;


 int LSM_OK ;
 int PAGE_FREE ;
 int PAGE_HASPREV ;
 int assert (int) ;
 int assert_lists_are_ok (TYPE_3__*) ;
 scalar_t__ fsFirstPageOnBlock (TYPE_3__*,int) ;
 int fsGrowMapping (TYPE_3__*,int,int*) ;
 scalar_t__ fsIsFirst (TYPE_3__*,scalar_t__) ;
 scalar_t__ fsIsLast (TYPE_3__*,scalar_t__) ;
 scalar_t__ fsMmapPage (TYPE_3__*,scalar_t__) ;
 int fsPageBuffer (TYPE_3__*,TYPE_2__**) ;
 int fsPageBufferFree (TYPE_2__*) ;
 TYPE_2__* fsPageFindInHash (TYPE_3__*,scalar_t__,int*) ;
 int fsPageRemoveFromLru (TYPE_3__*,TYPE_2__*) ;
 int fsReadPagedata (TYPE_3__*,TYPE_1__*,TYPE_2__*,int*) ;
 int lsmEnvRead (int ,int ,int,int *,int) ;
 scalar_t__ lsmFsRedirectPage (TYPE_3__*,int ,scalar_t__) ;
 TYPE_2__* lsmMallocZeroRc (int ,int,int*) ;
 int memset (int *,int,scalar_t__) ;

__attribute__((used)) static int fsPageGet(
  FileSystem *pFS,
  Segment *pSeg,
  LsmPgno iPg,
  int noContent,
  Page **ppPg,
  int *pnSpace
){
  Page *p;
  int iHash;
  int rc = LSM_OK;




  LsmPgno iReal = lsmFsRedirectPage(pFS, (pSeg ? pSeg->pRedirect : 0), iPg);

  assert_lists_are_ok(pFS);
  assert( iPg>=fsFirstPageOnBlock(pFS, 1) );
  assert( iReal>=fsFirstPageOnBlock(pFS, 1) );
  *ppPg = 0;


  p = fsPageFindInHash(pFS, iReal, &iHash);

  if( p ){
    assert( p->flags & PAGE_FREE );
    if( p->nRef==0 ) fsPageRemoveFromLru(pFS, p);
  }else{

    if( fsMmapPage(pFS, iReal) ){
      i64 iEnd = (i64)iReal * pFS->nPagesize;
      fsGrowMapping(pFS, iEnd, &rc);
      if( rc!=LSM_OK ) return rc;

      if( pFS->pFree ){
        p = pFS->pFree;
        pFS->pFree = p->pFreeNext;
        assert( p->nRef==0 );
      }else{
        p = lsmMallocZeroRc(pFS->pEnv, sizeof(Page), &rc);
        if( rc ) return rc;
        p->pFS = pFS;
      }
      p->aData = &((u8 *)pFS->pMap)[pFS->nPagesize * (iReal-1)];
      p->iPg = iReal;



      assert( p->pMappedNext==0 );
      p->pMappedNext = pFS->pMapped;
      pFS->pMapped = p;

      assert( pFS->pCompress==0 );
      assert( (p->flags & PAGE_FREE)==0 );
    }else{
      rc = fsPageBuffer(pFS, &p);
      if( rc==LSM_OK ){
        int nSpace = 0;
        p->iPg = iReal;
        p->nRef = 0;
        p->pFS = pFS;
        assert( p->flags==0 || p->flags==PAGE_FREE );




        assert( p->pLruNext==0 && p->pLruPrev==0 );
        if( noContent==0 ){
          if( pFS->pCompress ){
            rc = fsReadPagedata(pFS, pSeg, p, &nSpace);
          }else{
            int nByte = pFS->nPagesize;
            i64 iOff = (i64)(iReal-1) * pFS->nPagesize;
            rc = lsmEnvRead(pFS->pEnv, pFS->fdDb, iOff, p->aData, nByte);
          }
          pFS->nRead++;
        }




        if( rc==LSM_OK && nSpace==0 ){
          p->pHashNext = pFS->apHash[iHash];
          pFS->apHash[iHash] = p;
        }else{
          fsPageBufferFree(p);
          p = 0;
          if( pnSpace ) *pnSpace = nSpace;
        }
      }
    }

    assert( (rc==LSM_OK && (p || (pnSpace && *pnSpace)))
         || (rc!=LSM_OK && p==0)
    );
  }

  if( rc==LSM_OK && p ){
    if( pFS->pCompress==0 && (fsIsLast(pFS, iReal) || fsIsFirst(pFS, iReal)) ){
      p->nData = pFS->nPagesize - 4;
      if( fsIsFirst(pFS, iReal) && p->nRef==0 ){
        p->aData += 4;
        p->flags |= PAGE_HASPREV;
      }
    }else{
      p->nData = pFS->nPagesize;
    }
    pFS->nOut += (p->nRef==0);
    p->nRef++;
  }
  *ppPg = p;
  return rc;
}
