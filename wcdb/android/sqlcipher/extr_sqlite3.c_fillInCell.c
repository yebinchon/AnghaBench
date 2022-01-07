
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_18__ {size_t pageSize; int usableSize; scalar_t__ autoVacuum; int mutex; } ;
struct TYPE_17__ {int nData; int nZero; int nKey; int * pKey; int * pData; } ;
struct TYPE_16__ {unsigned char* pPayload; int nKey; int nSize; int nLocal; } ;
struct TYPE_15__ {unsigned char* aData; int childPtrSize; int intKeyLeaf; int maxLocal; int minLocal; int pDbPage; int (* xParseCell ) (TYPE_1__*,unsigned char*,TYPE_2__*) ;TYPE_4__* pBt; scalar_t__ intKey; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ CellInfo ;
typedef TYPE_3__ BtreePayload ;
typedef TYPE_4__ BtShared ;


 scalar_t__ PENDING_BYTE_PAGE (TYPE_4__*) ;
 scalar_t__ PTRMAP_ISPAGE (TYPE_4__*,scalar_t__) ;
 int PTRMAP_OVERFLOW1 ;
 int PTRMAP_OVERFLOW2 ;
 int SQLITE_OK ;
 int allocateBtreePage (TYPE_4__*,TYPE_1__**,scalar_t__*,scalar_t__,int ) ;
 int assert (int) ;
 int memcpy (unsigned char*,int const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ptrmapPut (TYPE_4__*,scalar_t__,int ,scalar_t__,int*) ;
 int put4byte (unsigned char*,scalar_t__) ;
 scalar_t__ putVarint (unsigned char*,int ) ;
 scalar_t__ putVarint32 (unsigned char*,int) ;
 int releasePage (TYPE_1__*) ;
 scalar_t__ sqlite3PagerIswriteable (int ) ;
 int sqlite3_mutex_held (int ) ;
 int stub1 (TYPE_1__*,unsigned char*,TYPE_2__*) ;
 int testcase (int) ;

__attribute__((used)) static int fillInCell(
  MemPage *pPage,
  unsigned char *pCell,
  const BtreePayload *pX,
  int *pnSize
){
  int nPayload;
  const u8 *pSrc;
  int nSrc, n, rc, mn;
  int spaceLeft;
  MemPage *pToRelease;
  unsigned char *pPrior;
  unsigned char *pPayload;
  BtShared *pBt;
  Pgno pgnoOvfl;
  int nHeader;

  assert( sqlite3_mutex_held(pPage->pBt->mutex) );



  assert( pCell<pPage->aData || pCell>=&pPage->aData[pPage->pBt->pageSize]
            || sqlite3PagerIswriteable(pPage->pDbPage) );


  nHeader = pPage->childPtrSize;
  if( pPage->intKey ){
    nPayload = pX->nData + pX->nZero;
    pSrc = pX->pData;
    nSrc = pX->nData;
    assert( pPage->intKeyLeaf );
    nHeader += putVarint32(&pCell[nHeader], nPayload);
    nHeader += putVarint(&pCell[nHeader], *(u64*)&pX->nKey);
  }else{
    assert( pX->nKey<=0x7fffffff && pX->pKey!=0 );
    nSrc = nPayload = (int)pX->nKey;
    pSrc = pX->pKey;
    nHeader += putVarint32(&pCell[nHeader], nPayload);
  }


  pPayload = &pCell[nHeader];
  if( nPayload<=pPage->maxLocal ){


    n = nHeader + nPayload;
    testcase( n==3 );
    testcase( n==4 );
    if( n<4 ) n = 4;
    *pnSize = n;
    assert( nSrc<=nPayload );
    testcase( nSrc<nPayload );
    memcpy(pPayload, pSrc, nSrc);
    memset(pPayload+nSrc, 0, nPayload-nSrc);
    return SQLITE_OK;
  }




  mn = pPage->minLocal;
  n = mn + (nPayload - mn) % (pPage->pBt->usableSize - 4);
  testcase( n==pPage->maxLocal );
  testcase( n==pPage->maxLocal+1 );
  if( n > pPage->maxLocal ) n = mn;
  spaceLeft = n;
  *pnSize = n + nHeader + 4;
  pPrior = &pCell[nHeader+n];
  pToRelease = 0;
  pgnoOvfl = 0;
  pBt = pPage->pBt;
  while( 1 ){
    n = nPayload;
    if( n>spaceLeft ) n = spaceLeft;



    assert( pToRelease==0 || sqlite3PagerIswriteable(pToRelease->pDbPage) );



    assert( pPayload<pPage->aData || pPayload>=&pPage->aData[pBt->pageSize]
            || sqlite3PagerIswriteable(pPage->pDbPage) );

    if( nSrc>=n ){
      memcpy(pPayload, pSrc, n);
    }else if( nSrc>0 ){
      n = nSrc;
      memcpy(pPayload, pSrc, n);
    }else{
      memset(pPayload, 0, n);
    }
    nPayload -= n;
    if( nPayload<=0 ) break;
    pPayload += n;
    pSrc += n;
    nSrc -= n;
    spaceLeft -= n;
    if( spaceLeft==0 ){
      MemPage *pOvfl = 0;

      Pgno pgnoPtrmap = pgnoOvfl;
      if( pBt->autoVacuum ){
        do{
          pgnoOvfl++;
        } while(
          PTRMAP_ISPAGE(pBt, pgnoOvfl) || pgnoOvfl==PENDING_BYTE_PAGE(pBt)
        );
      }

      rc = allocateBtreePage(pBt, &pOvfl, &pgnoOvfl, pgnoOvfl, 0);
      if( pBt->autoVacuum && rc==SQLITE_OK ){
        u8 eType = (pgnoPtrmap?PTRMAP_OVERFLOW2:PTRMAP_OVERFLOW1);
        ptrmapPut(pBt, pgnoOvfl, eType, pgnoPtrmap, &rc);
        if( rc ){
          releasePage(pOvfl);
        }
      }

      if( rc ){
        releasePage(pToRelease);
        return rc;
      }



      assert( pToRelease==0 || sqlite3PagerIswriteable(pToRelease->pDbPage) );



      assert( pPrior<pPage->aData || pPrior>=&pPage->aData[pBt->pageSize]
            || sqlite3PagerIswriteable(pPage->pDbPage) );

      put4byte(pPrior, pgnoOvfl);
      releasePage(pToRelease);
      pToRelease = pOvfl;
      pPrior = pOvfl->aData;
      put4byte(pPrior, 0);
      pPayload = &pOvfl->aData[4];
      spaceLeft = pBt->usableSize - 4;
    }
  }
  releasePage(pToRelease);
  return SQLITE_OK;
}
